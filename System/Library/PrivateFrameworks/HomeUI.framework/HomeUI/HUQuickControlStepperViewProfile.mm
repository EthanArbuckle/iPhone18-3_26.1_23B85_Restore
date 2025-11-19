@interface HUQuickControlStepperViewProfile
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUQuickControlStepperViewProfile

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = HUQuickControlStepperViewProfile;
  v4 = [(HUQuickControlViewProfile *)&v7 copyWithZone:a3];
  [v4 setNumberOfSegments:{-[HUQuickControlStepperViewProfile numberOfSegments](self, "numberOfSegments")}];
  [v4 setStepperBehavior:{-[HUQuickControlStepperViewProfile stepperBehavior](self, "stepperBehavior")}];
  [v4 setShowSegmentTitles:{-[HUQuickControlStepperViewProfile showSegmentTitles](self, "showSegmentTitles")}];
  v5 = [(HUQuickControlStepperViewProfile *)self segmentTitles];
  [v4 setSegmentTitles:v5];

  [v4 setStepperStyle:{-[HUQuickControlStepperViewProfile stepperStyle](self, "stepperStyle")}];
  return v4;
}

@end