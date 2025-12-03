@interface OCFontMetadata
+ (id)fontMetadataWithSig:(id)sig charSet:(int)set panose1:(id)panose1 pitch:(int)pitch genericFamily:(int)family altNames:(id)names;
- (OCFontMetadata)initWithSig:(id)sig charSet:(int)set panose1:(id)panose1 pitch:(int)pitch genericFamily:(int)family altNames:(id)names;
@end

@implementation OCFontMetadata

- (OCFontMetadata)initWithSig:(id)sig charSet:(int)set panose1:(id)panose1 pitch:(int)pitch genericFamily:(int)family altNames:(id)names
{
  sigCopy = sig;
  panose1Copy = panose1;
  namesCopy = names;
  v23.receiver = self;
  v23.super_class = OCFontMetadata;
  v18 = [(OCFontMetadata *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sig, sig);
    v19->_charSet = set;
    objc_storeStrong(&v19->_panose1, panose1);
    v19->_pitch = pitch;
    v19->_genericFamily = family;
    v20 = [namesCopy copy];
    altNames = v19->_altNames;
    v19->_altNames = v20;
  }

  return v19;
}

+ (id)fontMetadataWithSig:(id)sig charSet:(int)set panose1:(id)panose1 pitch:(int)pitch genericFamily:(int)family altNames:(id)names
{
  v9 = *&family;
  v10 = *&pitch;
  v12 = *&set;
  sigCopy = sig;
  panose1Copy = panose1;
  namesCopy = names;
  v16 = [[OCFontMetadata alloc] initWithSig:sigCopy charSet:v12 panose1:panose1Copy pitch:v10 genericFamily:v9 altNames:namesCopy];

  return v16;
}

@end