@interface NSString(MimeEnrichedReader)
+ (id)mf_stringFromMimeEnrichedString:()MimeEnrichedReader asHTML:;
+ (id)mf_stringFromMimeRichTextString:()MimeEnrichedReader asHTML:;
@end

@implementation NSString(MimeEnrichedReader)

+ (id)mf_stringFromMimeRichTextString:()MimeEnrichedReader asHTML:
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (a3)
  {
    v7 = objc_alloc_init(MFMimeEnrichedReader);
    [(MFMimeEnrichedReader *)v7 setWantsHTML:a4];
    [(MFMimeEnrichedReader *)v7 convertRichTextString:a3 intoOutputString:v6];
  }

  return v6;
}

+ (id)mf_stringFromMimeEnrichedString:()MimeEnrichedReader asHTML:
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (a3)
  {
    v7 = objc_alloc_init(MFMimeEnrichedReader);
    [(MFMimeEnrichedReader *)v7 setWantsHTML:a4];
    [(MFMimeEnrichedReader *)v7 convertEnrichedString:a3 intoOutputString:v6];
  }

  return v6;
}

@end