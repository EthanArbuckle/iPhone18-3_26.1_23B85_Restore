@interface CalCalendarConstraints
+ (id)_bundle;
+ (id)_strippedConstraintsNameForStoredConstraintsName:(id)name;
+ (id)backwardsCompatibleConstraintsPathForName:(id)name;
+ (id)constraintsURLForName:(id)name;
@end

@implementation CalCalendarConstraints

+ (id)constraintsURLForName:(id)name
{
  nameCopy = name;
  v5 = [self _strippedConstraintsNameForStoredConstraintsName:nameCopy];
  if (!v5 || ([self _bundle], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "URLForResource:withExtension:", v5, @"plist"), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    if ([nameCopy isAbsolutePath] && (objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "fileExistsAtPath:", nameCopy), v8, v9))
    {
      v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:nameCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)backwardsCompatibleConstraintsPathForName:(id)name
{
  v4 = backwardsCompatibleConstraintsPathForName__onceToken;
  nameCopy = name;
  if (v4 != -1)
  {
    +[CalCalendarConstraints backwardsCompatibleConstraintsPathForName:];
  }

  v6 = [self _strippedConstraintsNameForStoredConstraintsName:nameCopy];

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

+ (id)_strippedConstraintsNameForStoredConstraintsName:(id)name
{
  nameCopy = name;
  lastPathComponent = nameCopy;
  if ([nameCopy isAbsolutePath])
  {
    lastPathComponent = [nameCopy lastPathComponent];
  }

  if ([lastPathComponent hasSuffix:@".plist"])
  {
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    lastPathComponent = stringByDeletingPathExtension;
  }

  return lastPathComponent;
}

+ (id)_bundle
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__CalCalendarConstraints__bundle__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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