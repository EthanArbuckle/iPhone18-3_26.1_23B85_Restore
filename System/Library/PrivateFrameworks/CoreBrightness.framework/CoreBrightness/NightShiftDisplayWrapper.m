@interface NightShiftDisplayWrapper
- (NightShiftDisplayWrapper)init;
- (NightShiftDisplayWrapper)initWithDisplay:(__Display *)a3;
- (void)dealloc;
- (void)setNightShiftFactorDictionary:(id)a3;
@end

@implementation NightShiftDisplayWrapper

- (NightShiftDisplayWrapper)initWithDisplay:(__Display *)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = NightShiftDisplayWrapper;
  v7 = [(NightShiftDisplayWrapper *)&v4 init];
  if (v7 && v5)
  {
    v7->_display = v5;
    CFRetain(v7->_display);
  }

  return v7;
}

- (NightShiftDisplayWrapper)init
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = NightShiftDisplayWrapper;
  return [(NightShiftDisplayWrapper *)&v3 init];
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  if (self->_display)
  {
    CFRelease(v5->_display);
  }

  *&v2 = MEMORY[0x1E69E5920](v5->_container).n128_u64[0];
  v3.receiver = v5;
  v3.super_class = NightShiftDisplayWrapper;
  [(NightShiftDisplayWrapper *)&v3 dealloc];
}

- (void)setNightShiftFactorDictionary:(id)a3
{
  if (self->_display)
  {
    DisplaySetProperty(self->_display, @"BlueLightReductionFactor", a3);
  }

  else
  {
    [(CBContainerProtocol *)self->_container setProperty:a3 forKey:@"BlueLightReductionFactor"];
  }
}

@end