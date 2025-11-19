@interface CKRichLinkUtilities
+ (id)validURLsInString:(id)a3 inRange:(_NSRange)a4 validatesRichLinkSupport:(BOOL)a5;
- (_TtC7ChatKit19CKRichLinkUtilities)init;
@end

@implementation CKRichLinkUtilities

+ (id)validURLsInString:(id)a3 inRange:(_NSRange)a4 validatesRichLinkSupport:(BOOL)a5
{
  length = a4.length;
  location = a4.location;
  v8 = sub_190D56F10();
  _s7ChatKit19CKRichLinkUtilitiesC17validURLsInString_7inRange013validatesRichD7SupportSayAA014CKDataDetectedD6ResultCGSS_So8_NSRangeVSbtFZ_0(v8, v9, location, length, a5);

  type metadata accessor for CKDataDetectedLinkResult();
  v10 = sub_190D57160();

  return v10;
}

- (_TtC7ChatKit19CKRichLinkUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKRichLinkUtilities();
  return [(CKRichLinkUtilities *)&v3 init];
}

@end