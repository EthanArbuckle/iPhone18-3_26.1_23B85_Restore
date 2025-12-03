@interface NSString(AccessibilityIdentifiers)
+ (id)hk_chartAccessibilityIdentifier:()AccessibilityIdentifiers;
+ (id)hk_chartLollipopAccessibilityIdentifier:()AccessibilityIdentifiers;
+ (id)hk_chartOverlayAccessibilityIdentifier:()AccessibilityIdentifiers;
+ (id)hk_chartOverlayBloodPressureAccessibilityIdentifier:()AccessibilityIdentifiers;
+ (id)hk_chartOverlayCardioFitnessAccessibilityIdentifier:()AccessibilityIdentifiers;
@end

@implementation NSString(AccessibilityIdentifiers)

+ (id)hk_chartAccessibilityIdentifier:()AccessibilityIdentifiers
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v4 = [@"UIA.Health" stringByAppendingFormat:@".Chart.%@", v3];

  return v4;
}

+ (id)hk_chartOverlayAccessibilityIdentifier:()AccessibilityIdentifiers
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Overlay.%@", a3];
  v5 = [self hk_chartAccessibilityIdentifier:v4];

  return v5;
}

+ (id)hk_chartOverlayCardioFitnessAccessibilityIdentifier:()AccessibilityIdentifiers
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CardioFitnessLevel.%@", a3];
  v5 = [self hk_chartOverlayAccessibilityIdentifier:v4];

  return v5;
}

+ (id)hk_chartLollipopAccessibilityIdentifier:()AccessibilityIdentifiers
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LollipopContainer.%@", a3];
  v5 = [self hk_chartAccessibilityIdentifier:v4];

  return v5;
}

+ (id)hk_chartOverlayBloodPressureAccessibilityIdentifier:()AccessibilityIdentifiers
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BloodPressureCategory.%@", a3];
  v5 = [self hk_chartOverlayAccessibilityIdentifier:v4];

  return v5;
}

@end