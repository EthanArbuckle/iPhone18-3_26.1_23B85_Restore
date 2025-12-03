@interface HSFigCaptureSyncStreamsGroup
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToStreamsGroup:(id)group;
- (BOOL)setValue:(id)value forProperty:(__CFString *)property error:(id *)error;
- (HSFigCaptureSyncStreamsGroup)initWithCaptureSyncStreamsGroup:(OpaqueFigCaptureSynchronizedStreamsGroup *)group fromDevice:(id)device;
- (id)description;
- (id)valueForKey:(id)key;
- (id)valueForProperty:(__CFString *)property error:(id *)error;
@end

@implementation HSFigCaptureSyncStreamsGroup

- (HSFigCaptureSyncStreamsGroup)initWithCaptureSyncStreamsGroup:(OpaqueFigCaptureSynchronizedStreamsGroup *)group fromDevice:(id)device
{
  deviceCopy = device;
  FigBaseObject = FigCaptureSynchronizedStreamsGroupGetFigBaseObject();
  v11.receiver = self;
  v11.super_class = HSFigCaptureSyncStreamsGroup;
  v8 = [(HSCMBaseObject *)&v11 initWithBaseObject:FigBaseObject];
  v8->_underlyingSyncStreamsGroup = group;
  device = v8->_device;
  v8->_device = deviceCopy;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HSFigCaptureSyncStreamsGroup *)self isEqualToStreamsGroup:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToStreamsGroup:(id)group
{
  groupCopy = group;
  underlyingSyncStreamsGroup = [group underlyingSyncStreamsGroup];
  return underlyingSyncStreamsGroup == [(HSFigCaptureSyncStreamsGroup *)self underlyingSyncStreamsGroup];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = HSFigCaptureSyncStreamsGroup;
  v4 = [(HSFigCaptureSyncStreamsGroup *)&v10 description];
  underlyingSyncStreamsGroup = self->_underlyingSyncStreamsGroup;
  device = [(HSFigCaptureSyncStreamsGroup *)self device];
  v7 = [device description];
  v8 = [v3 stringWithFormat:@"%@ [streamsGroupRef: %p, device: %@]", v4, underlyingSyncStreamsGroup, v7];

  return v8;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  v5 = NSStringFromSelector(sel_underlyingSyncStreamsGroup);
  v6 = [keyCopy isEqualToString:v5];

  if (v6)
  {
    v7 = self->_underlyingSyncStreamsGroup;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HSFigCaptureSyncStreamsGroup;
    v7 = [(HSFigCaptureSyncStreamsGroup *)&v10 valueForKey:keyCopy];
  }

  v8 = v7;

  return v8;
}

- (BOOL)setValue:(id)value forProperty:(__CFString *)property error:(id *)error
{
  v8 = _unwrapFigCaptureValue(value);
  v10.receiver = self;
  v10.super_class = HSFigCaptureSyncStreamsGroup;
  LOBYTE(error) = [(HSCMBaseObject *)&v10 setValue:v8 forProperty:property error:error];

  return error;
}

- (id)valueForProperty:(__CFString *)property error:(id *)error
{
  v8.receiver = self;
  v8.super_class = HSFigCaptureSyncStreamsGroup;
  v5 = [(HSCMBaseObject *)&v8 valueForProperty:property error:error];
  v6 = _wrapFigCaptureValue(v5, self->_device);

  return v6;
}

@end