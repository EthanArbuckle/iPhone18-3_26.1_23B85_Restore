@interface CKDeletedMomentShareBalloonView
+ (id)_secondaryLabelString;
@end

@implementation CKDeletedMomentShareBalloonView

+ (id)_secondaryLabelString
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"CKDeletedMomentShareBalloonViewMessage" value:&stru_1F04268F8 table:@"ChatKit"];

  return v3;
}

@end