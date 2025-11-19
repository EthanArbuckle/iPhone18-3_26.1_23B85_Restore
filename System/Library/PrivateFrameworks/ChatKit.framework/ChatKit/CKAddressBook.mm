@interface CKAddressBook
+ (id)contactImageCache;
+ (id)contactImageOfDiameter:(double)a3 forID:(id)a4 monogramStyle:(int64_t)a5 tintMonogramText:(BOOL)a6 customFont:(id)a7;
+ (id)locationSharingContactImageOfDiameter:(double)a3 forID:(id)a4 useCustomFont:(BOOL)a5;
+ (id)monogrammerWithDiameter:(double)a3 style:(int64_t)a4 useAppTintColor:(BOOL)a5 customFont:(id)a6;
+ (id)placeholderContactImageOfDiameter:(double)a3 monogramStyle:(int64_t)a4 tintMonogramText:(BOOL)a5;
+ (void)flushMonogrammers;
@end

@implementation CKAddressBook

+ (id)contactImageCache
{
  if (contactImageCache_once != -1)
  {
    +[CKAddressBook contactImageCache];
  }

  v3 = contactImageCache_cache;

  return v3;
}

void __34__CKAddressBook_contactImageCache__block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateNSCache(v0);
  v2 = contactImageCache_cache;
  contactImageCache_cache = v1;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:contactImageCache_cache selector:sel_removeAllObjects name:*MEMORY[0x1E69A6830] object:0];
}

+ (id)contactImageOfDiameter:(double)a3 forID:(id)a4 monogramStyle:(int64_t)a5 tintMonogramText:(BOOL)a6 customFont:(id)a7
{
  v8 = a6;
  v26[1] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a7;
  *v24 = a3;
  v24[1] = [v12 intValue];
  v24[2] = a5;
  v25 = v8;
  *(&v25 + 1) = v13 != 0;
  v14 = [MEMORY[0x1E696B098] value:v24 withObjCType:"{?=diqBB}"];
  v15 = [a1 contactImageCache];
  v16 = [v15 objectForKey:v14];
  if (!v16)
  {
    v17 = [MEMORY[0x1E69A7FD0] sharedInstance];
    [MEMORY[0x1E695D188] descriptorForRequiredKeysIncludingImage:1];
    v18 = v23 = v8;
    v26[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v20 = [v17 fetchCNContactForHandleID:v12 withKeys:v19];

    if (![MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v20] || (objc_msgSend(a1, "monogrammerWithDiameter:style:useAppTintColor:customFont:", a5, v23, v13, a3), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "monogramForContact:", v20), v16 = objc_claimAutoreleasedReturnValue(), v21, !v16))
    {
      v16 = [a1 placeholderContactImageOfDiameter:a5 monogramStyle:v23 tintMonogramText:a3];
    }

    [v15 setObject:v16 forKey:v14];
  }

  return v16;
}

+ (id)placeholderContactImageOfDiameter:(double)a3 monogramStyle:(int64_t)a4 tintMonogramText:(BOOL)a5
{
  v5 = [a1 monogrammerWithDiameter:a4 style:a5 useAppTintColor:0 customFont:a3];
  v6 = [v5 silhouetteMonogram];

  return v6;
}

+ (id)locationSharingContactImageOfDiameter:(double)a3 forID:(id)a4 useCustomFont:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  if (v5)
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:42.0];
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 contactImageOfDiameter:v8 forID:1 monogramStyle:1 tintMonogramText:v9 customFont:a3];

  return v10;
}

+ (void)flushMonogrammers
{
  pthread_mutex_lock(&__CKAddressBook_MonogrammersMutex);
  pthread_mutex_unlock(&__CKAddressBook_MonogrammersMutex);
  v3 = [a1 contactImageCache];
  [v3 removeAllObjects];
}

+ (id)monogrammerWithDiameter:(double)a3 style:(int64_t)a4 useAppTintColor:(BOOL)a5 customFont:(id)a6
{
  v6 = a5;
  v10 = a6;
  pthread_mutex_lock(&__CKAddressBook_MonogrammersMutex);
  [MEMORY[0x1E696AF00] isMainThread];
  *v18 = a3;
  v18[1] = a4;
  v19 = v6;
  *(&v19 + 1) = v10 != 0;
  v11 = [MEMORY[0x1E696B098] value:v18 withObjCType:"{?=dqBB}"];
  v12 = [0 objectForKey:v11];
  if (!v12)
  {
    v13 = [a1 monogrammerProvider];
    v12 = [v13 monogrammerForStyle:a4 diameter:a3];

    if (v6)
    {
      v14 = +[CKUIBehavior sharedBehaviors];
      v15 = [v14 theme];
      v16 = [v15 appTintColor];
      [v12 monogramsWithTint:v16];
    }

    if (v10)
    {
      [v12 setFont:v10];
    }

    [0 setObject:v12 forKey:v11];
  }

  pthread_mutex_unlock(&__CKAddressBook_MonogrammersMutex);

  return v12;
}

@end