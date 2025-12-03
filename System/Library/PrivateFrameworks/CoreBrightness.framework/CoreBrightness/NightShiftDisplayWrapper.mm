@interface NightShiftDisplayWrapper
- (NightShiftDisplayWrapper)init;
- (NightShiftDisplayWrapper)initWithDisplay:(__Display *)display;
- (void)dealloc;
- (void)setNightShiftFactorDictionary:(id)dictionary;
@end

@implementation NightShiftDisplayWrapper

- (NightShiftDisplayWrapper)initWithDisplay:(__Display *)display
{
  selfCopy = self;
  v6 = a2;
  displayCopy = display;
  v4.receiver = self;
  v4.super_class = NightShiftDisplayWrapper;
  selfCopy = [(NightShiftDisplayWrapper *)&v4 init];
  if (selfCopy && displayCopy)
  {
    selfCopy->_display = displayCopy;
    CFRetain(selfCopy->_display);
  }

  return selfCopy;
}

- (NightShiftDisplayWrapper)init
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = NightShiftDisplayWrapper;
  return [(NightShiftDisplayWrapper *)&v3 init];
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  if (self->_display)
  {
    CFRelease(selfCopy->_display);
  }

  *&v2 = MEMORY[0x1E69E5920](selfCopy->_container).n128_u64[0];
  v3.receiver = selfCopy;
  v3.super_class = NightShiftDisplayWrapper;
  [(NightShiftDisplayWrapper *)&v3 dealloc];
}

- (void)setNightShiftFactorDictionary:(id)dictionary
{
  if (self->_display)
  {
    DisplaySetProperty(self->_display, @"BlueLightReductionFactor", dictionary);
  }

  else
  {
    [(CBContainerProtocol *)self->_container setProperty:dictionary forKey:@"BlueLightReductionFactor"];
  }
}

@end