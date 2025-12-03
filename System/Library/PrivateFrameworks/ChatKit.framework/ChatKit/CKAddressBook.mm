@interface CKAddressBook
+ (id)contactImageCache;
+ (id)contactImageOfDiameter:(double)diameter forID:(id)d monogramStyle:(int64_t)style tintMonogramText:(BOOL)text customFont:(id)font;
+ (id)locationSharingContactImageOfDiameter:(double)diameter forID:(id)d useCustomFont:(BOOL)font;
+ (id)monogrammerWithDiameter:(double)diameter style:(int64_t)style useAppTintColor:(BOOL)color customFont:(id)font;
+ (id)placeholderContactImageOfDiameter:(double)diameter monogramStyle:(int64_t)style tintMonogramText:(BOOL)text;
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

+ (id)contactImageOfDiameter:(double)diameter forID:(id)d monogramStyle:(int64_t)style tintMonogramText:(BOOL)text customFont:(id)font
{
  textCopy = text;
  v26[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  fontCopy = font;
  *v24 = diameter;
  v24[1] = [dCopy intValue];
  v24[2] = style;
  v25 = textCopy;
  *(&v25 + 1) = fontCopy != 0;
  v14 = [MEMORY[0x1E696B098] value:v24 withObjCType:"{?=diqBB}"];
  contactImageCache = [self contactImageCache];
  v16 = [contactImageCache objectForKey:v14];
  if (!v16)
  {
    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    [MEMORY[0x1E695D188] descriptorForRequiredKeysIncludingImage:1];
    v18 = v23 = textCopy;
    v26[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    v20 = [mEMORY[0x1E69A7FD0] fetchCNContactForHandleID:dCopy withKeys:v19];

    if (![MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v20] || (objc_msgSend(self, "monogrammerWithDiameter:style:useAppTintColor:customFont:", style, v23, fontCopy, diameter), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "monogramForContact:", v20), v16 = objc_claimAutoreleasedReturnValue(), v21, !v16))
    {
      v16 = [self placeholderContactImageOfDiameter:style monogramStyle:v23 tintMonogramText:diameter];
    }

    [contactImageCache setObject:v16 forKey:v14];
  }

  return v16;
}

+ (id)placeholderContactImageOfDiameter:(double)diameter monogramStyle:(int64_t)style tintMonogramText:(BOOL)text
{
  v5 = [self monogrammerWithDiameter:style style:text useAppTintColor:0 customFont:diameter];
  silhouetteMonogram = [v5 silhouetteMonogram];

  return silhouetteMonogram;
}

+ (id)locationSharingContactImageOfDiameter:(double)diameter forID:(id)d useCustomFont:(BOOL)font
{
  fontCopy = font;
  dCopy = d;
  if (fontCopy)
  {
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:42.0];
  }

  else
  {
    v9 = 0;
  }

  v10 = [self contactImageOfDiameter:dCopy forID:1 monogramStyle:1 tintMonogramText:v9 customFont:diameter];

  return v10;
}

+ (void)flushMonogrammers
{
  pthread_mutex_lock(&__CKAddressBook_MonogrammersMutex);
  pthread_mutex_unlock(&__CKAddressBook_MonogrammersMutex);
  contactImageCache = [self contactImageCache];
  [contactImageCache removeAllObjects];
}

+ (id)monogrammerWithDiameter:(double)diameter style:(int64_t)style useAppTintColor:(BOOL)color customFont:(id)font
{
  colorCopy = color;
  fontCopy = font;
  pthread_mutex_lock(&__CKAddressBook_MonogrammersMutex);
  [MEMORY[0x1E696AF00] isMainThread];
  *v18 = diameter;
  v18[1] = style;
  v19 = colorCopy;
  *(&v19 + 1) = fontCopy != 0;
  v11 = [MEMORY[0x1E696B098] value:v18 withObjCType:"{?=dqBB}"];
  v12 = [0 objectForKey:v11];
  if (!v12)
  {
    monogrammerProvider = [self monogrammerProvider];
    v12 = [monogrammerProvider monogrammerForStyle:style diameter:diameter];

    if (colorCopy)
    {
      v14 = +[CKUIBehavior sharedBehaviors];
      theme = [v14 theme];
      appTintColor = [theme appTintColor];
      [v12 monogramsWithTint:appTintColor];
    }

    if (fontCopy)
    {
      [v12 setFont:fontCopy];
    }

    [0 setObject:v12 forKey:v11];
  }

  pthread_mutex_unlock(&__CKAddressBook_MonogrammersMutex);

  return v12;
}

@end