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
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_foregroundApps count])
  {
    [v3 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"foreground:[%@]", -[NSArray componentsJoinedByString:](self->_foregroundApps, "componentsJoinedByString:", @", "))}];
  }

  if ([(NSArray *)self->_obscuredApps count])
  {
    [v3 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"obscured:[%@]", -[NSArray componentsJoinedByString:](self->_obscuredApps, "componentsJoinedByString:", @", "))}];
  }

  if ([(NSArray *)self->_transitioningApps count])
  {
    [v3 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"transitioning:[%@]", -[NSArray componentsJoinedByString:](self->_transitioningApps, "componentsJoinedByString:", @", "))}];
  }

  if ([(NSArray *)self->_pipApps count])
  {
    [v3 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"pip:[%@]", -[NSArray componentsJoinedByString:](self->_pipApps, "componentsJoinedByString:", @", "))}];
  }

  if (self->_onHomeScreen)
  {
    [v3 addObject:@"Home Screen"];
  }

  if (self->_onLockScreen)
  {
    [v3 addObject:@"Lock Screen"];
  }

  if (self->_siriVisible)
  {
    [v3 addObject:@"siri: 1"];
  }

  if (self->_paymentServiceVisible)
  {
    [v3 addObject:@"paymentService: 1"];
  }

  if (self->_paymentServiceIDVerifierVisible)
  {
    [v3 addObject:@"paymentServiceIDVerifier: 1"];
  }

  if (![v3 count])
  {
    [v3 addObject:@"ništa"];
  }

  displayType = self->_displayType;
  if (displayType <= 2)
  {
    [v3 insertObject:off_1E7999778[displayType] atIndex:0];
  }

  if (self->_timestamp)
  {
    [v3 insertObject:objc_msgSend(sLayoutTimestampDateFormatter atIndex:{"stringFromDate:"), 0}];
  }

  return [v3 componentsJoinedByString:{@", "}];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    sLayoutTimestampDateFormatter = v2;

    [v2 setDateFormat:@"MM-dd-yyyy HH:mm:ss"];
  }
}

@end