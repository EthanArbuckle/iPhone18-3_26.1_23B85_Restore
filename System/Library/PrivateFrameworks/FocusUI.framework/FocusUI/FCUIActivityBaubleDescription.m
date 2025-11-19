@interface FCUIActivityBaubleDescription
- (FCUIActivityBaubleDescription)initWithActivityDescription:(id)a3;
- (FCUIActivityBaubleDescription)initWithSystemImageName:(id)a3 tintColor:(id)a4;
- (id)completeDescriptionWithReferencePointSize:(double)a3 maximumPointSize:(double)a4 referenceDimension:(double)a5;
@end

@implementation FCUIActivityBaubleDescription

- (FCUIActivityBaubleDescription)initWithSystemImageName:(id)a3 tintColor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCUIActivityBaubleDescription;
  v9 = [(FCUIActivityBaubleDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_systemImageName, a3);
    objc_storeStrong(&v10->_tintColor, a4);
  }

  return v10;
}

- (FCUIActivityBaubleDescription)initWithActivityDescription:(id)a3
{
  v4 = a3;
  v5 = [v4 activitySymbolImageName];
  v6 = [MEMORY[0x277D75348] fcui_colorForActivity:v4];

  v7 = [(FCUIActivityBaubleDescription *)self initWithSystemImageName:v5 tintColor:v6];
  return v7;
}

- (id)completeDescriptionWithReferencePointSize:(double)a3 maximumPointSize:(double)a4 referenceDimension:(double)a5
{
  v5 = [[FCUIActivityBaubleCompleteDescription alloc] initWithSystemImageName:self->_systemImageName tintColor:self->_tintColor referencePointSize:a3 maximumPointSize:a4 referenceDimension:a5];

  return v5;
}

@end