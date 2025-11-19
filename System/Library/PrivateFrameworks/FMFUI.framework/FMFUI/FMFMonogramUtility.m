@interface FMFMonogramUtility
+ (__CFString)hexStringFromColor:(id)a3;
+ (id)contactImageCache;
+ (id)contactStatusCache;
+ (id)monogramImageOfDiameter:(double)a3 forContact:(id)a4 monogramStyle:(int64_t)a5 tintColor:(id)a6 customFont:(id)a7 isPersonImage:(BOOL *)a8;
+ (id)monogramImageOfDiameter:(double)a3 forContact:(id)a4 useTintColor:(id)a5 useCustomFont:(BOOL)a6 isPersonImage:(BOOL *)a7;
+ (id)monogrammerWithDiameter:(double)a3 style:(int64_t)a4 useTintColor:(id)a5 customFont:(id)a6;
+ (id)placeholderContactImageOfDiameter:(double)a3 monogramStyle:(int64_t)a4 useTintColor:(id)a5;
+ (void)clearMonogramCache;
@end

@implementation FMFMonogramUtility

+ (id)contactImageCache
{
  if (contactImageCache_once != -1)
  {
    +[FMFMonogramUtility contactImageCache];
  }

  v3 = imageCache;

  return v3;
}

uint64_t __39__FMFMonogramUtility_contactImageCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = imageCache;
  imageCache = v0;

  v2 = imageCache;

  return [v2 setEvictsObjectsWithDiscardedContent:0];
}

+ (id)contactStatusCache
{
  if (contactStatusCache_once != -1)
  {
    +[FMFMonogramUtility contactStatusCache];
  }

  v3 = statusCache;

  return v3;
}

uint64_t __40__FMFMonogramUtility_contactStatusCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = statusCache;
  statusCache = v0;

  v2 = statusCache;

  return [v2 setEvictsObjectsWithDiscardedContent:0];
}

+ (void)clearMonogramCache
{
  if (imageCache)
  {
    [imageCache removeAllObjects];
    v2 = vars8;
  }

  v3 = statusCache;
  if (statusCache)
  {

    [v3 removeAllObjects];
  }
}

+ (id)monogramImageOfDiameter:(double)a3 forContact:(id)a4 useTintColor:(id)a5 useCustomFont:(BOOL)a6 isPersonImage:(BOOL *)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a5;
  if (v8)
  {
    v14 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277CC4958] weight:34.0 design:*MEMORY[0x277D74420]];
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 monogramImageOfDiameter:v12 forContact:1 monogramStyle:v13 tintColor:v14 customFont:a7 isPersonImage:a3];

  return v15;
}

+ (id)monogramImageOfDiameter:(double)a3 forContact:(id)a4 monogramStyle:(int64_t)a5 tintColor:(id)a6 customFont:(id)a7 isPersonImage:(BOOL *)a8
{
  v38 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v30 = a8;
  *a8 = 0;
  v31 = a3;
  v32 = [(__CFString *)v14 identifier];

  v33 = a5;
  v35 = v15 != 0;
  *(&v35 + 1) = v16 != 0;
  v34 = [a1 hexStringFromColor:v15];
  v17 = [MEMORY[0x277CCAE60] value:&v31 withObjCType:"{?=d^{__CFString}q^{__CFString}BB}"];
  v18 = [a1 contactImageCache];
  v19 = [a1 contactStatusCache];
  v20 = [v18 objectForKey:v17];
  v21 = LogCategory_Daemon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v14;
    _os_log_impl(&dword_24A4E3000, v21, OS_LOG_TYPE_DEFAULT, "FMFMonogramUtility monogramImageOfDiameterForContact: %@", buf, 0xCu);
  }

  if (v20)
  {
    v22 = [v19 objectForKey:v17];
    v23 = LogCategory_Daemon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v20;
      _os_log_impl(&dword_24A4E3000, v23, OS_LOG_TYPE_DEFAULT, "FMFMonogramUtility: Using cached image %@", buf, 0xCu);
    }

    if (v22)
    {
      *v30 = [v22 BOOLValue];
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_13;
    }

    v24 = [a1 monogrammerWithDiameter:a5 style:v15 useTintColor:v16 customFont:a3];
    v20 = [v24 monogramForContact:v14 isContactImage:v30];

    v25 = LogCategory_Daemon();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = @"Image";
      _os_log_impl(&dword_24A4E3000, v25, OS_LOG_TYPE_DEFAULT, "FMFMonogramUtility: Record found, using %@", buf, 0xCu);
    }

    if (!v20)
    {
LABEL_13:
      v26 = LogCategory_Daemon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_24A4E3000, v26, OS_LOG_TYPE_DEFAULT, "FMFMonogramUtility: No Record, using placeholder", buf, 2u);
      }

      v20 = [a1 placeholderContactImageOfDiameter:a5 monogramStyle:v15 useTintColor:a3];
    }

    v27 = [MEMORY[0x277CCABB0] numberWithBool:*v30];
    [v19 setObject:v27 forKey:v17];

    [v18 setObject:v20 forKey:v17];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)placeholderContactImageOfDiameter:(double)a3 monogramStyle:(int64_t)a4 useTintColor:(id)a5
{
  v5 = [a1 monogrammerWithDiameter:a4 style:a5 useTintColor:0 customFont:a3];
  v6 = [v5 monogramForContact:0];

  return v6;
}

+ (id)monogrammerWithDiameter:(double)a3 style:(int64_t)a4 useTintColor:(id)a5 customFont:(id)a6
{
  v10 = a5;
  v11 = a6;
  pthread_mutex_lock(&__FMFAddressBook_MonogrammersMutex);
  [MEMORY[0x277CCACC8] isMainThread];
  v17 = v10 != 0;
  *(&v17 + 1) = v11 != 0;
  v16[2] = [a1 hexStringFromColor:{v10, *&a3, a4}];
  v12 = [MEMORY[0x277CCAE60] value:v16 withObjCType:"{?=dq^{__CFString}BB}"];
  v13 = [0 objectForKey:v12];
  if (!v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CBDC78]) initWithStyle:a4 diameter:a3];
    v13 = v14;
    if (v17)
    {
      [v14 monogramsWithTint:v10];
    }

    if (BYTE1(v17) == 1)
    {
      [v13 setFont:v11];
    }

    [0 setObject:v13 forKey:v12];
  }

  pthread_mutex_unlock(&__FMFAddressBook_MonogrammersMutex);

  return v13;
}

+ (__CFString)hexStringFromColor:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v4, kCGRenderingIntentDefault, [v3 CGColor], 0);
  CGColorSpaceRelease(v4);
  NumberOfComponents = CGColorGetNumberOfComponents(CopyByMatchingToColorSpace);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  if (NumberOfComponents > 2)
  {
    v10 = *Components;
    v11 = Components[1];
    v12 = Components[2];
    CGColorRelease(CopyByMatchingToColorSpace);
    v13 = v10 * 255.0;
    v14 = llroundf(v13);
    v15 = v11 * 255.0;
    v16 = v12 * 255.0;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%02lX%02lX%02lX", v14, llroundf(v15), llroundf(v16)];
  }

  else
  {
    v8 = LogCategory_Daemon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v3;
      _os_log_impl(&dword_24A4E3000, v8, OS_LOG_TYPE_DEFAULT, "FMFMonogramUtility: invalid color provided in hexStringFromColor: %@", buf, 0xCu);
    }

    CGColorRelease(CopyByMatchingToColorSpace);
    v9 = @"#FFFFFF";
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

@end