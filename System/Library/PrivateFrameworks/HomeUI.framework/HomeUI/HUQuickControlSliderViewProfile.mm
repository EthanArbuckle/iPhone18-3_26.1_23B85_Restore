@interface HUQuickControlSliderViewProfile
- (HUQuickControlSliderViewProfile)init;
- (double)gestureDragCoefficient;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUQuickControlSliderViewProfile

- (HUQuickControlSliderViewProfile)init
{
  v5.receiver = self;
  v5.super_class = HUQuickControlSliderViewProfile;
  v2 = [(HUQuickControlSliderViewProfile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HUQuickControlSliderViewProfile *)v2 setHasOffState:1];
    [(HUQuickControlSliderViewProfile *)v3 setPreferredFillSection:0];
    [(HUQuickControlSliderViewProfile *)v3 setHasSecondaryValue:0];
    [(HUQuickControlSliderViewProfile *)v3 setInteractionFidelity:0];
    [(HUQuickControlSliderViewProfile *)v3 setShowGrabbers:0];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = HUQuickControlSliderViewProfile;
  v4 = [(HUQuickControlViewProfile *)&v8 copyWithZone:zone];
  primaryValueConstraints = [(HUQuickControlSliderViewProfile *)self primaryValueConstraints];
  [v4 setPrimaryValueConstraints:primaryValueConstraints];

  secondaryValueConstraints = [(HUQuickControlSliderViewProfile *)self secondaryValueConstraints];
  [v4 setSecondaryValueConstraints:secondaryValueConstraints];

  [v4 setHasOffState:{-[HUQuickControlSliderViewProfile hasOffState](self, "hasOffState")}];
  [v4 setHasSecondaryValue:{-[HUQuickControlSliderViewProfile hasSecondaryValue](self, "hasSecondaryValue")}];
  [v4 setShowGrabbers:{-[HUQuickControlSliderViewProfile showGrabbers](self, "showGrabbers")}];
  return v4;
}

- (double)gestureDragCoefficient
{
  interactionFidelity = [(HUQuickControlSliderViewProfile *)self interactionFidelity];
  result = 1.75;
  if (!interactionFidelity)
  {
    return 1.0;
  }

  return result;
}

@end