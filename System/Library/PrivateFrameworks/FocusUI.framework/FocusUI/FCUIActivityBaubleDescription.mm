@interface FCUIActivityBaubleDescription
- (FCUIActivityBaubleDescription)initWithActivityDescription:(id)description;
- (FCUIActivityBaubleDescription)initWithSystemImageName:(id)name tintColor:(id)color;
- (id)completeDescriptionWithReferencePointSize:(double)size maximumPointSize:(double)pointSize referenceDimension:(double)dimension;
@end

@implementation FCUIActivityBaubleDescription

- (FCUIActivityBaubleDescription)initWithSystemImageName:(id)name tintColor:(id)color
{
  nameCopy = name;
  colorCopy = color;
  v12.receiver = self;
  v12.super_class = FCUIActivityBaubleDescription;
  v9 = [(FCUIActivityBaubleDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemImageName, name);
    objc_storeStrong(&v10->_tintColor, color);
  }

  return v10;
}

- (FCUIActivityBaubleDescription)initWithActivityDescription:(id)description
{
  descriptionCopy = description;
  activitySymbolImageName = [descriptionCopy activitySymbolImageName];
  v6 = [MEMORY[0x277D75348] fcui_colorForActivity:descriptionCopy];

  v7 = [(FCUIActivityBaubleDescription *)self initWithSystemImageName:activitySymbolImageName tintColor:v6];
  return v7;
}

- (id)completeDescriptionWithReferencePointSize:(double)size maximumPointSize:(double)pointSize referenceDimension:(double)dimension
{
  v5 = [[FCUIActivityBaubleCompleteDescription alloc] initWithSystemImageName:self->_systemImageName tintColor:self->_tintColor referencePointSize:size maximumPointSize:pointSize referenceDimension:dimension];

  return v5;
}

@end