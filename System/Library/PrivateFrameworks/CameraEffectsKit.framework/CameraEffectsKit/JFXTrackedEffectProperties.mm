@interface JFXTrackedEffectProperties
- (JFXTrackedEffectProperties)init;
- (JFXTrackedEffectProperties)initWithCoder:(id)coder;
- (JFXTrackedEffectPropertiesDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)currentTrackingType;
- (void)enableTrackingState:(BOOL)state;
- (void)encodeWithCoder:(id)coder;
- (void)setTrackingType:(int64_t)type;
@end

@implementation JFXTrackedEffectProperties

- (JFXTrackedEffectProperties)init
{
  v5.receiver = self;
  v5.super_class = JFXTrackedEffectProperties;
  v2 = [(JFXTrackedEffectProperties *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(JFXTrackedEffectProperties *)v2 setTrackingType:0];
    [(JFXTrackedEffectProperties *)v3 setDisableTracking:0];
    [(JFXTrackedEffectProperties *)v3 setInternalTrackingType:[(JFXTrackedEffectProperties *)v3 currentTrackingType]];
  }

  return v3;
}

- (JFXTrackedEffectProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = JFXTrackedEffectProperties;
  v5 = [(JFXTrackedEffectProperties *)&v7 init];
  if (v5)
  {
    -[JFXTrackedEffectProperties setTrackingType:](v5, "setTrackingType:", [coderCopy decodeIntegerForKey:@"kJFXTrackedEffectProperties_typeKey"]);
    -[JFXTrackedEffectProperties setDisableTracking:](v5, "setDisableTracking:", [coderCopy decodeBoolForKey:@"kJFXTrackedEffectProperties_disableKey"]);
    [(JFXTrackedEffectProperties *)v5 setInternalTrackingType:[(JFXTrackedEffectProperties *)v5 currentTrackingType]];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setTrackingType:{-[JFXTrackedEffectProperties trackingType](self, "trackingType")}];
  [v4 setDisableTracking:{-[JFXTrackedEffectProperties isTrackingDisabled](self, "isTrackingDisabled")}];
  [v4 setInternalTrackingType:{-[JFXTrackedEffectProperties internalTrackingType](self, "internalTrackingType")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[JFXTrackedEffectProperties trackingType](self forKey:{"trackingType"), @"kJFXTrackedEffectProperties_typeKey"}];
  [coderCopy encodeBool:-[JFXTrackedEffectProperties isTrackingDisabled](self forKey:{"isTrackingDisabled"), @"kJFXTrackedEffectProperties_disableKey"}];
}

- (void)setTrackingType:(int64_t)type
{
  if ([(JFXTrackedEffectProperties *)self internalTrackingType]!= type)
  {
    [(JFXTrackedEffectProperties *)self setInternalTrackingType:type];
    delegate = [(JFXTrackedEffectProperties *)self delegate];
    [delegate trackedEffectProperties:self didChangeTrackingType:1 didChangeEnabled:0];
  }
}

- (int64_t)currentTrackingType
{
  if ([(JFXTrackedEffectProperties *)self isTrackingDisabled])
  {
    return 0;
  }

  return [(JFXTrackedEffectProperties *)self internalTrackingType];
}

- (void)enableTrackingState:(BOOL)state
{
  stateCopy = state;
  if ([(JFXTrackedEffectProperties *)self isTrackingDisabled]== state)
  {
    [(JFXTrackedEffectProperties *)self setDisableTracking:!stateCopy];
    delegate = [(JFXTrackedEffectProperties *)self delegate];
    [delegate trackedEffectProperties:self didChangeTrackingType:0 didChangeEnabled:1];
  }
}

- (JFXTrackedEffectPropertiesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end