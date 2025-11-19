@interface SGUIIconSupport
+ (id)_homeScreenDescriptorWithBorder:(BOOL)a3;
+ (id)_iconImageWithBundleIdentifier:(id)a3 imageDescriptor:(id)a4;
+ (id)_imageWithIcon:(id)a3 imageDescriptor:(id)a4;
+ (id)_spotlightDescriptorWithBorder:(BOOL)a3;
+ (id)homeScreenIconImageWithBundleIdentifier:(id)a3 drawBorder:(BOOL)a4;
+ (id)iconForCalendarDate:(id)a3;
+ (id)iconForCalendarDate:(id)a3 drawBorder:(BOOL)a4;
+ (id)spotlightIconImageWithBundleIdentifier:(id)a3 drawBorder:(BOOL)a4;
@end

@implementation SGUIIconSupport

+ (id)_imageWithIcon:(id)a3 imageDescriptor:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:&v15 count:1];
  [v7 prepareImagesForImageDescriptors:{v8, v15, v16}];

  v9 = [v7 imageForDescriptor:v6];

  v10 = MEMORY[0x1E69DCAB8];
  v11 = [v9 CGImage];
  v12 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v12 scale];
  v13 = [v10 imageWithCGImage:v11 scale:0 orientation:?];

  return v13;
}

+ (id)_iconImageWithBundleIdentifier:(id)a3 imageDescriptor:(id)a4
{
  v6 = MEMORY[0x1E69A8A00];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithBundleIdentifier:v8];

  v10 = [a1 _imageWithIcon:v9 imageDescriptor:v7];

  return v10;
}

+ (id)iconForCalendarDate:(id)a3 drawBorder:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E69A8A00];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x1E695DEE8] currentCalendar];
  v10 = [v8 initWithDate:v7 calendar:v9 format:0];

  v11 = [a1 _homeScreenDescriptorWithBorder:v4];
  v12 = [a1 _imageWithIcon:v10 imageDescriptor:v11];

  return v12;
}

+ (id)iconForCalendarDate:(id)a3
{
  v4 = MEMORY[0x1E69A8A00];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v6 initWithDate:v5 calendar:v7 format:0];

  v9 = [a1 _homeScreenDescriptorWithBorder:0];
  v10 = [a1 _imageWithIcon:v8 imageDescriptor:v9];

  return v10;
}

+ (id)_homeScreenDescriptorWithBorder:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
  v5 = v4;
  if (v3)
  {
    [v4 setDrawBorder:1];
  }

  return v5;
}

+ (id)_spotlightDescriptorWithBorder:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A98]];
  v5 = v4;
  if (v3)
  {
    [v4 setDrawBorder:1];
  }

  return v5;
}

+ (id)spotlightIconImageWithBundleIdentifier:(id)a3 drawBorder:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 _spotlightDescriptorWithBorder:v4];
  v8 = [a1 _iconImageWithBundleIdentifier:v6 imageDescriptor:v7];

  return v8;
}

+ (id)homeScreenIconImageWithBundleIdentifier:(id)a3 drawBorder:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [a1 _homeScreenDescriptorWithBorder:v4];
  v8 = [a1 _iconImageWithBundleIdentifier:v6 imageDescriptor:v7];

  return v8;
}

@end