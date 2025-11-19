@interface OCFontMetadata
+ (id)fontMetadataWithSig:(id)a3 charSet:(int)a4 panose1:(id)a5 pitch:(int)a6 genericFamily:(int)a7 altNames:(id)a8;
- (OCFontMetadata)initWithSig:(id)a3 charSet:(int)a4 panose1:(id)a5 pitch:(int)a6 genericFamily:(int)a7 altNames:(id)a8;
@end

@implementation OCFontMetadata

- (OCFontMetadata)initWithSig:(id)a3 charSet:(int)a4 panose1:(id)a5 pitch:(int)a6 genericFamily:(int)a7 altNames:(id)a8
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = OCFontMetadata;
  v18 = [(OCFontMetadata *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sig, a3);
    v19->_charSet = a4;
    objc_storeStrong(&v19->_panose1, a5);
    v19->_pitch = a6;
    v19->_genericFamily = a7;
    v20 = [v17 copy];
    altNames = v19->_altNames;
    v19->_altNames = v20;
  }

  return v19;
}

+ (id)fontMetadataWithSig:(id)a3 charSet:(int)a4 panose1:(id)a5 pitch:(int)a6 genericFamily:(int)a7 altNames:(id)a8
{
  v9 = *&a7;
  v10 = *&a6;
  v12 = *&a4;
  v13 = a3;
  v14 = a5;
  v15 = a8;
  v16 = [[OCFontMetadata alloc] initWithSig:v13 charSet:v12 panose1:v14 pitch:v10 genericFamily:v9 altNames:v15];

  return v16;
}

@end