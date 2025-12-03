@interface HUQuickControlStepperViewProfile
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUQuickControlStepperViewProfile

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = HUQuickControlStepperViewProfile;
  v4 = [(HUQuickControlViewProfile *)&v7 copyWithZone:zone];
  [v4 setNumberOfSegments:{-[HUQuickControlStepperViewProfile numberOfSegments](self, "numberOfSegments")}];
  [v4 setStepperBehavior:{-[HUQuickControlStepperViewProfile stepperBehavior](self, "stepperBehavior")}];
  [v4 setShowSegmentTitles:{-[HUQuickControlStepperViewProfile showSegmentTitles](self, "showSegmentTitles")}];
  segmentTitles = [(HUQuickControlStepperViewProfile *)self segmentTitles];
  [v4 setSegmentTitles:segmentTitles];

  [v4 setStepperStyle:{-[HUQuickControlStepperViewProfile stepperStyle](self, "stepperStyle")}];
  return v4;
}

@end