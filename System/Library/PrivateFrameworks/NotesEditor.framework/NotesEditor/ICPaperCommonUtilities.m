@interface ICPaperCommonUtilities
+ (id)activitiesToExcludeForNote:(id)a3 currentUserActivity:(id)a4;
- (ICPaperCommonUtilities)init;
@end

@implementation ICPaperCommonUtilities

+ (id)activitiesToExcludeForNote:(id)a3 currentUserActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  _s11NotesEditor20PaperCommonUtilitiesC19activitiesToExclude7forNote19currentUserActivitySaySo06NSUserM0CGSo6ICNoteC_AHSgtFZ_0(v5, a4);

  sub_2151A6C9C(0, &qword_27CA5DBD0);
  v7 = sub_2154A1F3C();

  return v7;
}

- (ICPaperCommonUtilities)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICPaperCommonUtilities *)&v3 init];
}

@end