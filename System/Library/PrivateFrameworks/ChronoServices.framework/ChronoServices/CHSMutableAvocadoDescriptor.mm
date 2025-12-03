@interface CHSMutableAvocadoDescriptor
- (CHSMutableAvocadoDescriptor)initWithCoder:(id)coder;
- (CHSMutableAvocadoDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind displayName:(id)name intentType:(id)type supportedSizeClasses:(unint64_t)classes widgetDescription:(id)description widgetVisibility:(int64_t)self0;
- (CHSMutableAvocadoDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind supportedFamilies:(unint64_t)families intentType:(id)type;
- (CHSMutableAvocadoDescriptor)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind supportedFamilies:(unint64_t)families intentType:(id)type;
@end

@implementation CHSMutableAvocadoDescriptor

- (CHSMutableAvocadoDescriptor)initWithExtensionBundleIdentifier:(id)identifier kind:(id)kind supportedFamilies:(unint64_t)families intentType:(id)type
{
  identifierCopy = identifier;
  kindCopy = kind;
  typeCopy = type;
  v13 = [(CHSWidgetDescriptor *)[CHSMutableWidgetDescriptor alloc] initWithExtensionBundleIdentifier:identifierCopy kind:kindCopy supportedFamilies:families intentType:typeCopy];

  return v13;
}

- (CHSMutableAvocadoDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind supportedFamilies:(unint64_t)families intentType:(id)type
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  typeCopy = type;
  v16 = [(CHSWidgetDescriptor *)[CHSMutableWidgetDescriptor alloc] initWithExtensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy kind:kindCopy supportedFamilies:families intentType:typeCopy];

  return v16;
}

- (CHSMutableAvocadoDescriptor)initWithExtensionBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier kind:(id)kind displayName:(id)name intentType:(id)type supportedSizeClasses:(unint64_t)classes widgetDescription:(id)description widgetVisibility:(int64_t)self0
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  nameCopy = name;
  typeCopy = type;
  descriptionCopy = description;
  v22 = [(CHSWidgetDescriptor *)[CHSMutableWidgetDescriptor alloc] initWithExtensionBundleIdentifier:identifierCopy containerBundleIdentifier:bundleIdentifierCopy kind:kindCopy displayName:nameCopy intentType:typeCopy supportedSizeClasses:classes widgetDescription:descriptionCopy widgetVisibility:visibility];

  return v22;
}

- (CHSMutableAvocadoDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CHSWidgetDescriptor *)[CHSMutableWidgetDescriptor alloc] initWithCoder:coderCopy];

  return v5;
}

@end