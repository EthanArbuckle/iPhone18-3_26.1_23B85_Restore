@interface HUQuickControlRingSliderViewProfile
- (HUQuickControlRingSliderViewProfile)init;
- (NSArray)gradationMarkingValues;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUQuickControlRingSliderViewProfile

- (NSArray)gradationMarkingValues
{
  gradationMarkingValues = self->_gradationMarkingValues;
  if (!gradationMarkingValues)
  {
    v4 = objc_opt_new();
    v5 = self->_gradationMarkingValues;
    self->_gradationMarkingValues = v4;

    gradationMarkingValues = self->_gradationMarkingValues;
  }

  return gradationMarkingValues;
}

- (HUQuickControlRingSliderViewProfile)init
{
  v5.receiver = self;
  v5.super_class = HUQuickControlRingSliderViewProfile;
  v2 = [(HUQuickControlRingSliderViewProfile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HUQuickControlRingSliderViewProfile *)v2 setHasOffState:0];
    [(HUQuickControlRingSliderViewProfile *)v3 setHasSecondaryValue:0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = HUQuickControlRingSliderViewProfile;
  v4 = [(HUQuickControlViewProfile *)&v8 copyWithZone:zone];
  [v4 setHasOffState:{-[HUQuickControlRingSliderViewProfile hasOffState](self, "hasOffState")}];
  primaryValueConstraints = [(HUQuickControlRingSliderViewProfile *)self primaryValueConstraints];
  [v4 setPrimaryValueConstraints:primaryValueConstraints];

  secondaryValueConstraints = [(HUQuickControlRingSliderViewProfile *)self secondaryValueConstraints];
  [v4 setSecondaryValueConstraints:secondaryValueConstraints];

  [v4 setHasSecondaryValue:{-[HUQuickControlRingSliderViewProfile hasSecondaryValue](self, "hasSecondaryValue")}];
  [v4 setStyle:{-[HUQuickControlRingSliderViewProfile style](self, "style")}];
  [v4 setShouldShowSupplementaryValue:{-[HUQuickControlRingSliderViewProfile shouldShowSupplementaryValue](self, "shouldShowSupplementaryValue")}];
  return v4;
}

@end