@interface CKSendLaterPluginInfo
- (CKSendLaterPluginInfo)initWithSelectedDate:(id)a3;
- (NSDate)selectedDate;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setSelectedDate:(id)a3;
- (void)setShowingDatePicker:(BOOL)a3;
@end

@implementation CKSendLaterPluginInfo

- (NSDate)selectedDate
{
  v2 = sub_190D51840();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_190D517E0();
  sub_190CC6388(v8);
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = sub_190D51780();
  v9(v8, v2);

  return v10;
}

- (void)setSelectedDate:(id)a3
{
  v4 = sub_190D51840();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D517E0();
  v7 = self;
  sub_190CC5DEC(v6);
}

- (void)setShowingDatePicker:(BOOL)a3
{
  *(&self->super.isa + OBJC_IVAR___CKSendLaterPluginInfo_showingDatePicker) = a3;
  v3 = self;
  sub_190CC6824();
}

- (CKSendLaterPluginInfo)initWithSelectedDate:(id)a3
{
  v3 = sub_190D51840();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D517E0();
  return sub_190CC6BA4(v5);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CKSendLaterPluginInfo__selectedDate);
  v5 = a3;
  v8 = self;
  v6 = v4;
  v7 = sub_190D56ED0();
  [v5 encodeObject:v6 forKey:v7];
}

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR___CKSendLaterPluginInfo_updateTimer);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = CKSendLaterPluginInfo;
  [(CKSendLaterPluginInfo *)&v5 dealloc];
}

@end