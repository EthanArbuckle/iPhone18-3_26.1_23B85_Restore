@interface SGUIIconSupport
+ (id)_homeScreenDescriptorWithBorder:(BOOL)border;
+ (id)_iconImageWithBundleIdentifier:(id)identifier imageDescriptor:(id)descriptor;
+ (id)_imageWithIcon:(id)icon imageDescriptor:(id)descriptor;
+ (id)_spotlightDescriptorWithBorder:(BOOL)border;
+ (id)homeScreenIconImageWithBundleIdentifier:(id)identifier drawBorder:(BOOL)border;
+ (id)iconForCalendarDate:(id)date;
+ (id)iconForCalendarDate:(id)date drawBorder:(BOOL)border;
+ (id)spotlightIconImageWithBundleIdentifier:(id)identifier drawBorder:(BOOL)border;
@end

@implementation SGUIIconSupport

+ (id)_imageWithIcon:(id)icon imageDescriptor:(id)descriptor
{
  v16 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v5 = MEMORY[0x1E695DEC8];
  descriptorCopy2 = descriptor;
  iconCopy = icon;
  v8 = [v5 arrayWithObjects:&descriptorCopy count:1];
  [iconCopy prepareImagesForImageDescriptors:{v8, descriptorCopy, v16}];

  v9 = [iconCopy imageForDescriptor:descriptorCopy2];

  v10 = MEMORY[0x1E69DCAB8];
  cGImage = [v9 CGImage];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v13 = [v10 imageWithCGImage:cGImage scale:0 orientation:?];

  return v13;
}

+ (id)_iconImageWithBundleIdentifier:(id)identifier imageDescriptor:(id)descriptor
{
  v6 = MEMORY[0x1E69A8A00];
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  v9 = [[v6 alloc] initWithBundleIdentifier:identifierCopy];

  v10 = [self _imageWithIcon:v9 imageDescriptor:descriptorCopy];

  return v10;
}

+ (id)iconForCalendarDate:(id)date drawBorder:(BOOL)border
{
  borderCopy = border;
  v6 = MEMORY[0x1E69A8A00];
  dateCopy = date;
  v8 = [v6 alloc];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v8 initWithDate:dateCopy calendar:currentCalendar format:0];

  v11 = [self _homeScreenDescriptorWithBorder:borderCopy];
  v12 = [self _imageWithIcon:v10 imageDescriptor:v11];

  return v12;
}

+ (id)iconForCalendarDate:(id)date
{
  v4 = MEMORY[0x1E69A8A00];
  dateCopy = date;
  v6 = [v4 alloc];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v6 initWithDate:dateCopy calendar:currentCalendar format:0];

  v9 = [self _homeScreenDescriptorWithBorder:0];
  v10 = [self _imageWithIcon:v8 imageDescriptor:v9];

  return v10;
}

+ (id)_homeScreenDescriptorWithBorder:(BOOL)border
{
  borderCopy = border;
  v4 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
  v5 = v4;
  if (borderCopy)
  {
    [v4 setDrawBorder:1];
  }

  return v5;
}

+ (id)_spotlightDescriptorWithBorder:(BOOL)border
{
  borderCopy = border;
  v4 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A98]];
  v5 = v4;
  if (borderCopy)
  {
    [v4 setDrawBorder:1];
  }

  return v5;
}

+ (id)spotlightIconImageWithBundleIdentifier:(id)identifier drawBorder:(BOOL)border
{
  borderCopy = border;
  identifierCopy = identifier;
  v7 = [self _spotlightDescriptorWithBorder:borderCopy];
  v8 = [self _iconImageWithBundleIdentifier:identifierCopy imageDescriptor:v7];

  return v8;
}

+ (id)homeScreenIconImageWithBundleIdentifier:(id)identifier drawBorder:(BOOL)border
{
  borderCopy = border;
  identifierCopy = identifier;
  v7 = [self _homeScreenDescriptorWithBorder:borderCopy];
  v8 = [self _iconImageWithBundleIdentifier:identifierCopy imageDescriptor:v7];

  return v8;
}

@end