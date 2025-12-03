@interface FigCaptureDisplayLayout
+ (void)initialize;
- (id)_init;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation FigCaptureDisplayLayout

- (id)_init
{
  v4.receiver = self;
  v4.super_class = FigCaptureDisplayLayout;
  v2 = [(FigCaptureDisplayLayout *)&v4 init];
  if (v2)
  {
    v2->_foregroundApps = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_obscuredApps = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_transitioningApps = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v2->_pipApps = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureDisplayLayout;
  [(FigCaptureDisplayLayout *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[FigCaptureDisplayLayout debugDescription](self, "debugDescription")];
}

- (id)debugDescription
{
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_foregroundApps count])
  {
    [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"foreground:[%@]", -[NSArray componentsJoinedByString:](self->_foregroundApps, "componentsJoinedByString:", @", "))}];
  }

  if ([(NSArray *)self->_obscuredApps count])
  {
    [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"obscured:[%@]", -[NSArray componentsJoinedByString:](self->_obscuredApps, "componentsJoinedByString:", @", "))}];
  }

  if ([(NSArray *)self->_transitioningApps count])
  {
    [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"transitioning:[%@]", -[NSArray componentsJoinedByString:](self->_transitioningApps, "componentsJoinedByString:", @", "))}];
  }

  if ([(NSArray *)self->_pipApps count])
  {
    [array addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"pip:[%@]", -[NSArray componentsJoinedByString:](self->_pipApps, "componentsJoinedByString:", @", "))}];
  }

  if (self->_onHomeScreen)
  {
    [array addObject:@"Home Screen"];
  }

  if (self->_onLockScreen)
  {
    [array addObject:@"Lock Screen"];
  }

  if (self->_siriVisible)
  {
    [array addObject:@"siri: 1"];
  }

  if (self->_paymentServiceVisible)
  {
    [array addObject:@"paymentService: 1"];
  }

  if (self->_paymentServiceIDVerifierVisible)
  {
    [array addObject:@"paymentServiceIDVerifier: 1"];
  }

  if (![array count])
  {
    [array addObject:@"ništa"];
  }

  displayType = self->_displayType;
  if (displayType <= 2)
  {
    [array insertObject:off_1E7999778[displayType] atIndex:0];
  }

  if (self->_timestamp)
  {
    [array insertObject:objc_msgSend(sLayoutTimestampDateFormatter atIndex:{"stringFromDate:"), 0}];
  }

  return [array componentsJoinedByString:{@", "}];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    sLayoutTimestampDateFormatter = v2;

    [v2 setDateFormat:@"MM-dd-yyyy HH:mm:ss"];
  }
}

@end