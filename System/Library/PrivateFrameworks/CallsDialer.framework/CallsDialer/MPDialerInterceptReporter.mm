@interface MPDialerInterceptReporter
+ (NSString)eventName;
- (BOOL)appleSupport;
- (BOOL)autocomplete;
- (BOOL)savedContact;
- (MPDialerInterceptReporter)init;
- (int64_t)firstShownOption;
- (int64_t)secondShownOption;
- (int64_t)selectedOption;
- (void)log;
- (void)logWith:(int64_t)with;
- (void)setAppleSupport:(BOOL)support;
- (void)setAutocomplete:(BOOL)autocomplete;
- (void)setFirstShownOption:(int64_t)option;
- (void)setSavedContact:(BOOL)contact;
- (void)setSecondShownOption:(int64_t)option;
- (void)setSelectedOption:(int64_t)option;
- (void)updateForDialerResultPressed:(int64_t)pressed savedContact:(BOOL)contact;
@end

@implementation MPDialerInterceptReporter

+ (NSString)eventName
{
  v2 = sub_2429E9798();

  return v2;
}

- (BOOL)appleSupport
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAppleSupport:(BOOL)support
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_appleSupport;
  swift_beginAccess();
  *(&self->super.isa + v5) = support;
}

- (BOOL)autocomplete
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_autocomplete;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setAutocomplete:(BOOL)autocomplete
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_autocomplete;
  swift_beginAccess();
  *(&self->super.isa + v5) = autocomplete;
}

- (BOOL)savedContact
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_savedContact;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSavedContact:(BOOL)contact
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_savedContact;
  swift_beginAccess();
  *(&self->super.isa + v5) = contact;
}

- (int64_t)selectedOption
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSelectedOption:(int64_t)option
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_selectedOption;
  swift_beginAccess();
  *(&self->super.isa + v5) = option;
}

- (int64_t)firstShownOption
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_firstShownOption;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setFirstShownOption:(int64_t)option
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_firstShownOption;
  swift_beginAccess();
  *(&self->super.isa + v5) = option;
}

- (int64_t)secondShownOption
{
  v3 = OBJC_IVAR___MPDialerInterceptReporter_secondShownOption;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setSecondShownOption:(int64_t)option
{
  v5 = OBJC_IVAR___MPDialerInterceptReporter_secondShownOption;
  swift_beginAccess();
  *(&self->super.isa + v5) = option;
}

- (void)updateForDialerResultPressed:(int64_t)pressed savedContact:(BOOL)contact
{
  selfCopy = self;
  sub_2429E072C(pressed, contact);
}

- (void)logWith:(int64_t)with
{
  selfCopy = self;
  sub_2429E0A04(with);
}

- (void)log
{
  selfCopy = self;
  v3 = sub_2429E9798();
  v4 = swift_allocObject();
  *(v4 + 16) = selfCopy;
  v7[4] = sub_2429E211C;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2429E0C5C;
  v7[3] = &block_descriptor_38;
  v5 = _Block_copy(v7);
  v6 = selfCopy;

  AnalyticsSendEventLazy();

  _Block_release(v5);
}

- (MPDialerInterceptReporter)init
{
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_appleSupport) = 0;
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_autocomplete) = 0;
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_savedContact) = 0;
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_selectedOption) = 5;
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_firstShownOption) = 5;
  *(&self->super.isa + OBJC_IVAR___MPDialerInterceptReporter_secondShownOption) = 5;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DialerInterceptReporter();
  return [(MPDialerInterceptReporter *)&v3 init];
}

@end