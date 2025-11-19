@interface WBMessages
+ (void)initialize;
@end

@implementation WBMessages

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [TCTaggedMessage alloc];
    v10 = TCBundle();
    v3 = [v10 localizedStringForKey:@"The document was created with an unsupported version of Word." value:&stru_286EE1130 table:@"TCCompatibility"];
    v4 = [(TCTaggedMessage *)v2 initWithMessageText:v3];
    v5 = WBUnsupportedVersion;
    WBUnsupportedVersion = v4;

    v6 = [TCTaggedMessage alloc];
    v11 = TCBundle();
    v7 = [v11 localizedStringForKey:@"An image is missing from the document." value:&stru_286EE1130 table:@"TCCompatibility"];
    v8 = [(TCTaggedMessage *)v6 initWithMessageText:v7];
    v9 = WBMissingImage;
    WBMissingImage = v8;
  }
}

@end