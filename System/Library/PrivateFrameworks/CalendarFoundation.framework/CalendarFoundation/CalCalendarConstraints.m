@interface CalCalendarConstraints
+ (id)_bundle;
+ (id)_strippedConstraintsNameForStoredConstraintsName:(id)a3;
+ (id)backwardsCompatibleConstraintsPathForName:(id)a3;
+ (id)constraintsURLForName:(id)a3;
@end

@implementation CalCalendarConstraints

+ (id)constraintsURLForName:(id)a3
{
  v4 = a3;
  v5 = [a1 _strippedConstraintsNameForStoredConstraintsName:v4];
  if (!v5 || ([a1 _bundle], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "URLForResource:withExtension:", v5, @"plist"), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    if ([v4 isAbsolutePath] && (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "fileExistsAtPath:", v4), v8, v9))
    {
      v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)backwardsCompatibleConstraintsPathForName:(id)a3
{
  v4 = backwardsCompatibleConstraintsPathForName__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    +[CalCalendarConstraints backwardsCompatibleConstraintsPathForName:];
  }

  v6 = [a1 _strippedConstraintsNameForStoredConstraintsName:v5];

  v7 = [backwardsCompatibleConstraintsPathForName__map objectForKeyedSubscript:v6];

  return v7;
}

void __68__CalCalendarConstraints_backwardsCompatibleConstraintsPathForName___block_invoke()
{
  v4[14] = *MEMORY[0x1E69E9840];
  v3[0] = @"CalDAVCalendarConstraints";
  v3[1] = @"CalDAVCalendarConstraintsNoComments";
  v4[0] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DACalDAV.framework/CalDAVCalendarConstraints.plist";
  v4[1] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DACalDAV.framework/CalDAVCalendarConstraintsNoComments.plist";
  v3[2] = @"CalDAVCalendarConstraintsNoSchedule";
  v3[3] = @"CalDAVCalendarConstraintsNoScheduleNoComments";
  v4[2] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DACalDAV.framework/CalDAVCalendarConstraintsNoSchedule.plist";
  v4[3] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DACalDAV.framework/CalDAVCalendarConstraintsNoScheduleNoComments.plist";
  v3[4] = @"FutureLimitedCalDAVCalendarConstraints";
  v3[5] = @"FutureLimitedCalDAVCalendarConstraintsNoComments";
  v4[4] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DACalDAV.framework/FutureLimitedCalDAVCalendarConstraints.plist";
  v4[5] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DACalDAV.framework/FutureLimitedCalDAVCalendarConstraintsNoComments.plist";
  v3[6] = @"FutureLimitedCalDAVCalendarConstraintsNoSchedule";
  v3[7] = @"FutureLimitedCalDAVCalendarConstraintsNoScheduleNoComments";
  v4[6] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DACalDAV.framework/FutureLimitedCalDAVCalendarConstraintsNoSchedule.plist";
  v4[7] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DACalDAV.framework/FutureLimitedCalDAVCalendarConstraintsNoScheduleNoComments.plist";
  v3[8] = @"EAS12CalendarConstraints";
  v3[9] = @"EAS14CalendarConstraints";
  v4[8] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DAEAS.framework/EAS12CalendarConstraints.plist";
  v4[9] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DAEAS.framework/EAS14CalendarConstraints.plist";
  v3[10] = @"EAS16CalendarConstraints";
  v3[11] = @"EAS161CalendarConstraints";
  v4[10] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DAEAS.framework/EAS16CalendarConstraints.plist";
  v4[11] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DAEAS.framework/EAS161CalendarConstraints.plist";
  v3[12] = @"EAS25CalendarConstraints";
  v3[13] = @"SubCalCalendarConstraints";
  v4[12] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DAEAS.framework/EAS25CalendarConstraints.plist";
  v4[13] = @"/System/Library/PrivateFrameworks/DataAccess.framework/Frameworks/DASubCal.framework/SubCalCalendarConstraints.plist";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:14];
  v1 = backwardsCompatibleConstraintsPathForName__map;
  backwardsCompatibleConstraintsPathForName__map = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)_strippedConstraintsNameForStoredConstraintsName:(id)a3
{
  v3 = a3;
  v4 = v3;
  if ([v3 isAbsolutePath])
  {
    v4 = [v3 lastPathComponent];
  }

  if ([v4 hasSuffix:@".plist"])
  {
    v5 = [v4 stringByDeletingPathExtension];

    v4 = v5;
  }

  return v4;
}

+ (id)_bundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CalCalendarConstraints__bundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_bundle_onceToken != -1)
  {
    dispatch_once(&_bundle_onceToken, block);
  }

  v2 = _bundle_bundle;

  return v2;
}

uint64_t __33__CalCalendarConstraints__bundle__block_invoke(uint64_t a1)
{
  _bundle_bundle = [MEMORY[0x1E696AAE8] bundleForClass:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

@end