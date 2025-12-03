@interface FMFMonogramUtility
+ (__CFString)hexStringFromColor:(id)color;
+ (id)contactImageCache;
+ (id)contactStatusCache;
+ (id)monogramImageOfDiameter:(double)diameter forContact:(id)contact monogramStyle:(int64_t)style tintColor:(id)color customFont:(id)font isPersonImage:(BOOL *)image;
+ (id)monogramImageOfDiameter:(double)diameter forContact:(id)contact useTintColor:(id)color useCustomFont:(BOOL)font isPersonImage:(BOOL *)image;
+ (id)monogrammerWithDiameter:(double)diameter style:(int64_t)style useTintColor:(id)color customFont:(id)font;
+ (id)placeholderContactImageOfDiameter:(double)diameter monogramStyle:(int64_t)style useTintColor:(id)color;
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

+ (id)monogramImageOfDiameter:(double)diameter forContact:(id)contact useTintColor:(id)color useCustomFont:(BOOL)font isPersonImage:(BOOL *)image
{
  fontCopy = font;
  contactCopy = contact;
  colorCopy = color;
  if (fontCopy)
  {
    v14 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277CC4958] weight:34.0 design:*MEMORY[0x277D74420]];
  }

  else
  {
    v14 = 0;
  }

  v15 = [self monogramImageOfDiameter:contactCopy forContact:1 monogramStyle:colorCopy tintColor:v14 customFont:image isPersonImage:diameter];

  return v15;
}

+ (id)monogramImageOfDiameter:(double)diameter forContact:(id)contact monogramStyle:(int64_t)style tintColor:(id)color customFont:(id)font isPersonImage:(BOOL *)image
{
  v38 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  colorCopy = color;
  fontCopy = font;
  imageCopy = image;
  *image = 0;
  diameterCopy = diameter;
  identifier = [(__CFString *)contactCopy identifier];

  styleCopy = style;
  v35 = colorCopy != 0;
  *(&v35 + 1) = fontCopy != 0;
  v34 = [self hexStringFromColor:colorCopy];
  v17 = [MEMORY[0x277CCAE60] value:&diameterCopy withObjCType:"{?=d^{__CFString}q^{__CFString}BB}"];
  contactImageCache = [self contactImageCache];
  contactStatusCache = [self contactStatusCache];
  v20 = [contactImageCache objectForKey:v17];
  v21 = LogCategory_Daemon();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = contactCopy;
    _os_log_impl(&dword_24A4E3000, v21, OS_LOG_TYPE_DEFAULT, "FMFMonogramUtility monogramImageOfDiameterForContact: %@", buf, 0xCu);
  }

  if (v20)
  {
    v22 = [contactStatusCache objectForKey:v17];
    v23 = LogCategory_Daemon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v20;
      _os_log_impl(&dword_24A4E3000, v23, OS_LOG_TYPE_DEFAULT, "FMFMonogramUtility: Using cached image %@", buf, 0xCu);
    }

    if (v22)
    {
      *imageCopy = [v22 BOOLValue];
    }
  }

  else
  {
    if (!contactCopy)
    {
      goto LABEL_13;
    }

    v24 = [self monogrammerWithDiameter:style style:colorCopy useTintColor:fontCopy customFont:diameter];
    v20 = [v24 monogramForContact:contactCopy isContactImage:imageCopy];

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

      v20 = [self placeholderContactImageOfDiameter:style monogramStyle:colorCopy useTintColor:diameter];
    }

    v27 = [MEMORY[0x277CCABB0] numberWithBool:*imageCopy];
    [contactStatusCache setObject:v27 forKey:v17];

    [contactImageCache setObject:v20 forKey:v17];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)placeholderContactImageOfDiameter:(double)diameter monogramStyle:(int64_t)style useTintColor:(id)color
{
  v5 = [self monogrammerWithDiameter:style style:color useTintColor:0 customFont:diameter];
  v6 = [v5 monogramForContact:0];

  return v6;
}

+ (id)monogrammerWithDiameter:(double)diameter style:(int64_t)style useTintColor:(id)color customFont:(id)font
{
  colorCopy = color;
  fontCopy = font;
  pthread_mutex_lock(&__FMFAddressBook_MonogrammersMutex);
  [MEMORY[0x277CCACC8] isMainThread];
  v17 = colorCopy != 0;
  *(&v17 + 1) = fontCopy != 0;
  v16[2] = [self hexStringFromColor:{colorCopy, *&diameter, style}];
  v12 = [MEMORY[0x277CCAE60] value:v16 withObjCType:"{?=dq^{__CFString}BB}"];
  v13 = [0 objectForKey:v12];
  if (!v13)
  {
    v14 = [objc_alloc(MEMORY[0x277CBDC78]) initWithStyle:style diameter:diameter];
    v13 = v14;
    if (v17)
    {
      [v14 monogramsWithTint:colorCopy];
    }

    if (BYTE1(v17) == 1)
    {
      [v13 setFont:fontCopy];
    }

    [0 setObject:v13 forKey:v12];
  }

  pthread_mutex_unlock(&__FMFAddressBook_MonogrammersMutex);

  return v13;
}

+ (__CFString)hexStringFromColor:(id)color
{
  v21 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v4, kCGRenderingIntentDefault, [colorCopy CGColor], 0);
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
      v20 = colorCopy;
      _os_log_impl(&dword_24A4E3000, v8, OS_LOG_TYPE_DEFAULT, "FMFMonogramUtility: invalid color provided in hexStringFromColor: %@", buf, 0xCu);
    }

    CGColorRelease(CopyByMatchingToColorSpace);
    v9 = @"#FFFFFF";
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

@end