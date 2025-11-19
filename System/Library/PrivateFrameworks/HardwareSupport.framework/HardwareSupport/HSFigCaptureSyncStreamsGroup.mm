@interface HSFigCaptureSyncStreamsGroup
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStreamsGroup:(id)a3;
- (BOOL)setValue:(id)a3 forProperty:(__CFString *)a4 error:(id *)a5;
- (HSFigCaptureSyncStreamsGroup)initWithCaptureSyncStreamsGroup:(OpaqueFigCaptureSynchronizedStreamsGroup *)a3 fromDevice:(id)a4;
- (id)description;
- (id)valueForKey:(id)a3;
- (id)valueForProperty:(__CFString *)a3 error:(id *)a4;
@end

@implementation HSFigCaptureSyncStreamsGroup

- (HSFigCaptureSyncStreamsGroup)initWithCaptureSyncStreamsGroup:(OpaqueFigCaptureSynchronizedStreamsGroup *)a3 fromDevice:(id)a4
{
  v6 = a4;
  FigBaseObject = FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
  v11.receiver = self;
  v11.super_class = HSFigCaptureSyncStreamsGroup;
  v8 = [(HSCMBaseObject *)&v11 initWithBaseObject:FigBaseObject];
  v8->_underlyingSyncStreamsGroup = a3;
  device = v8->_device;
  v8->_device = v6;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSFigCaptureSyncStreamsGroup *)self isEqualToStreamsGroup:v4];
  }

  return v5;
}

- (BOOL)isEqualToStreamsGroup:(id)a3
{
  v5 = a3;
  v6 = [a3 underlyingSyncStreamsGroup];
  return v6 == [(HSFigCaptureSyncStreamsGroup *)self underlyingSyncStreamsGroup];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HSFigCaptureSyncStreamsGroup;
  v4 = [(HSFigCaptureSyncStreamsGroup *)&v10 description];
  underlyingSyncStreamsGroup = self->_underlyingSyncStreamsGroup;
  v6 = [(HSFigCaptureSyncStreamsGroup *)self device];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"%@ [streamsGroupRef: %p, device: %@]", v4, underlyingSyncStreamsGroup, v7];

  return v8;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_underlyingSyncStreamsGroup);
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = self->_underlyingSyncStreamsGroup;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HSFigCaptureSyncStreamsGroup;
    v7 = [(HSFigCaptureSyncStreamsGroup *)&v10 valueForKey:v4];
  }

  v8 = v7;

  return v8;
}

- (BOOL)setValue:(id)a3 forProperty:(__CFString *)a4 error:(id *)a5
{
  v8 = _unwrapFigCaptureValue(a3);
  v10.receiver = self;
  v10.super_class = HSFigCaptureSyncStreamsGroup;
  LOBYTE(a5) = [(HSCMBaseObject *)&v10 setValue:v8 forProperty:a4 error:a5];

  return a5;
}

- (id)valueForProperty:(__CFString *)a3 error:(id *)a4
{
  v8.receiver = self;
  v8.super_class = HSFigCaptureSyncStreamsGroup;
  v5 = [(HSCMBaseObject *)&v8 valueForProperty:a3 error:a4];
  v6 = _wrapFigCaptureValue(v5, self->_device);

  return v6;
}

@end