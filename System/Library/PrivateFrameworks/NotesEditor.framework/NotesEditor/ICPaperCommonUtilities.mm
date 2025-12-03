@interface ICPaperCommonUtilities
+ (id)activitiesToExcludeForNote:(id)note currentUserActivity:(id)activity;
- (ICPaperCommonUtilities)init;
@end

@implementation ICPaperCommonUtilities

+ (id)activitiesToExcludeForNote:(id)note currentUserActivity:(id)activity
{
  noteCopy = note;
  activityCopy = activity;
  _s11NotesEditor20PaperCommonUtilitiesC19activitiesToExclude7forNote19currentUserActivitySaySo06NSUserM0CGSo6ICNoteC_AHSgtFZ_0(noteCopy, activity);

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