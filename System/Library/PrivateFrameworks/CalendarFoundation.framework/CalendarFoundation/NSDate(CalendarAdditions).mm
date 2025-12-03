@interface NSDate(CalendarAdditions)
- (id)dateAtHour:()CalendarAdditions minute:second:inTimeZone:;
- (id)dateForEndOfDayInTimeZone:()CalendarAdditions;
- (id)dateWithoutTimeComponentsInTimeZone:()CalendarAdditions;
- (void)_performBlockBehindDispatchSync:()CalendarAdditions inTimeZone:;
@end

@implementation NSDate(CalendarAdditions)

- (id)dateForEndOfDayInTimeZone:()CalendarAdditions
{
  v4 = a3;
  v5 = [self dateForStartOfDayInTimeZone:v4];
  if ([self isEqual:v5])
  {
    selfCopy = self;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v7 setDay:1];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__2;
    v20 = __Block_byref_object_dispose__2;
    v21 = 0;
    v8 = _EKSharedGregorianCalendarLock();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__NSDate_CalendarAdditions__dateForEndOfDayInTimeZone___block_invoke;
    block[3] = &unk_1E7EC6818;
    block[4] = self;
    v15 = &v16;
    v12 = v4;
    v13 = v7;
    v14 = v5;
    v9 = v7;
    dispatch_sync(v8, block);

    selfCopy = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  return selfCopy;
}

- (id)dateAtHour:()CalendarAdditions minute:second:inTimeZone:
{
  v10 = a6;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v11 = _EKSharedGregorianCalendarLock();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__NSDate_CalendarAdditions__dateAtHour_minute_second_inTimeZone___block_invoke;
  v15[3] = &unk_1E7EC6840;
  v15[4] = self;
  v16 = v10;
  v19 = a4;
  v20 = a5;
  v17 = &v21;
  v18 = a3;
  v12 = v10;
  dispatch_sync(v11, v15);

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

- (id)dateWithoutTimeComponentsInTimeZone:()CalendarAdditions
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__NSDate_CalendarAdditions__dateWithoutTimeComponentsInTimeZone___block_invoke;
  v7[3] = &unk_1E7EC6868;
  v7[4] = self;
  v7[5] = &v8;
  [self _performBlockBehindDispatchSync:v7 inTimeZone:v4];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)_performBlockBehindDispatchSync:()CalendarAdditions inTimeZone:
{
  v5 = a3;
  v6 = a4;
  v7 = _EKSharedGregorianCalendarLock();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__NSDate_CalendarAdditions___performBlockBehindDispatchSync_inTimeZone___block_invoke;
  v10[3] = &unk_1E7EC6890;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_sync(v7, v10);
}

@end