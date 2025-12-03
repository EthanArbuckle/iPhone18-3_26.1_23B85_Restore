@interface HKAxisConfiguration
- (HKAxisConfiguration)init;
- (HKAxisLabelDataSource)labelDataSource;
- (void)applyOverridesFromAxisConfiguration:(id)configuration;
@end

@implementation HKAxisConfiguration

- (HKAxisConfiguration)init
{
  v11.receiver = self;
  v11.super_class = HKAxisConfiguration;
  v2 = [(HKAxisConfiguration *)&v11 init];
  v3 = v2;
  if (v2)
  {
    preferredStyle = v2->_preferredStyle;
    v2->_preferredStyle = 0;

    *&v3->_maxLabels = xmmword_1C3D5DB70;
    maxLabelWidth = v3->_maxLabelWidth;
    v3->_maxLabelWidth = 0;

    horizontalAxisLabelSpacePadding = v3->_horizontalAxisLabelSpacePadding;
    v3->_horizontalAxisLabelSpacePadding = &unk_1F4384AD0;

    v7 = objc_opt_new();
    transform = v3->_transform;
    v3->_transform = v7;

    zoomScaleEngine = v3->_zoomScaleEngine;
    v3->_zoomScaleEngine = 0;

    objc_storeWeak(&v3->_labelDataSource, 0);
    *&v3->_overrideNoTopBaseline = 0;
    v3->_axisLabelsDependOnPointTransform = 0;
  }

  return v3;
}

- (void)applyOverridesFromAxisConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_alloc_init(HKAxisConfiguration);
  preferredStyle = [configurationCopy preferredStyle];
  preferredStyle2 = [(HKAxisConfiguration *)v4 preferredStyle];

  if (preferredStyle != preferredStyle2)
  {
    preferredStyle3 = [configurationCopy preferredStyle];
    [(HKAxisConfiguration *)self setPreferredStyle:preferredStyle3];
  }

  maxLabels = [configurationCopy maxLabels];
  if (maxLabels != [(HKAxisConfiguration *)v4 maxLabels])
  {
    -[HKAxisConfiguration setMaxLabels:](self, "setMaxLabels:", [configurationCopy maxLabels]);
  }

  minLabels = [configurationCopy minLabels];
  if (minLabels != [(HKAxisConfiguration *)v4 minLabels])
  {
    -[HKAxisConfiguration setMinLabels:](self, "setMinLabels:", [configurationCopy minLabels]);
  }

  maxLabelWidth = [configurationCopy maxLabelWidth];
  maxLabelWidth2 = [(HKAxisConfiguration *)v4 maxLabelWidth];
  v12 = maxLabelWidth2;
  if (maxLabelWidth == maxLabelWidth2)
  {

LABEL_14:
    goto LABEL_15;
  }

  maxLabelWidth3 = [(HKAxisConfiguration *)v4 maxLabelWidth];
  if (!maxLabelWidth3)
  {

    goto LABEL_13;
  }

  v14 = maxLabelWidth3;
  maxLabelWidth4 = [configurationCopy maxLabelWidth];
  maxLabelWidth5 = [(HKAxisConfiguration *)v4 maxLabelWidth];
  v17 = [maxLabelWidth4 isEqual:maxLabelWidth5];

  if ((v17 & 1) == 0)
  {
LABEL_13:
    maxLabelWidth = [configurationCopy maxLabelWidth];
    [(HKAxisConfiguration *)self setMaxLabelWidth:maxLabelWidth];
    goto LABEL_14;
  }

LABEL_15:
  horizontalAxisLabelSpacePadding = [configurationCopy horizontalAxisLabelSpacePadding];
  horizontalAxisLabelSpacePadding2 = [(HKAxisConfiguration *)v4 horizontalAxisLabelSpacePadding];

  if (horizontalAxisLabelSpacePadding != horizontalAxisLabelSpacePadding2)
  {
    horizontalAxisLabelSpacePadding3 = [configurationCopy horizontalAxisLabelSpacePadding];
    [(HKAxisConfiguration *)self setHorizontalAxisLabelSpacePadding:horizontalAxisLabelSpacePadding3];
  }

  transform = [configurationCopy transform];
  transform2 = [(HKAxisConfiguration *)v4 transform];
  v23 = [transform isEqual:transform2];

  if ((v23 & 1) == 0)
  {
    transform3 = [configurationCopy transform];
    [(HKAxisConfiguration *)self setTransform:transform3];
  }

  zoomScaleEngine = [configurationCopy zoomScaleEngine];
  zoomScaleEngine2 = [(HKAxisConfiguration *)v4 zoomScaleEngine];

  if (zoomScaleEngine != zoomScaleEngine2)
  {
    zoomScaleEngine3 = [configurationCopy zoomScaleEngine];
    [(HKAxisConfiguration *)self setZoomScaleEngine:zoomScaleEngine3];
  }

  labelDataSource = [configurationCopy labelDataSource];
  labelDataSource2 = [(HKAxisConfiguration *)v4 labelDataSource];

  if (labelDataSource != labelDataSource2)
  {
    labelDataSource3 = [configurationCopy labelDataSource];
    [(HKAxisConfiguration *)self setLabelDataSource:labelDataSource3];
  }

  overrideNoTopBaseline = [configurationCopy overrideNoTopBaseline];
  if (overrideNoTopBaseline != [(HKAxisConfiguration *)v4 overrideNoTopBaseline])
  {
    -[HKAxisConfiguration setOverrideNoTopBaseline:](self, "setOverrideNoTopBaseline:", [configurationCopy overrideNoTopBaseline]);
  }

  axisAnnotationsExcludeInterstitialAxisLabels = [configurationCopy axisAnnotationsExcludeInterstitialAxisLabels];
  if (axisAnnotationsExcludeInterstitialAxisLabels != [(HKAxisConfiguration *)v4 axisAnnotationsExcludeInterstitialAxisLabels])
  {
    -[HKAxisConfiguration setAxisAnnotationsExcludeInterstitialAxisLabels:](self, "setAxisAnnotationsExcludeInterstitialAxisLabels:", [configurationCopy axisAnnotationsExcludeInterstitialAxisLabels]);
  }

  axisLabelsDependOnPointTransform = [configurationCopy axisLabelsDependOnPointTransform];
  if (axisLabelsDependOnPointTransform != [(HKAxisConfiguration *)v4 axisLabelsDependOnPointTransform])
  {
    -[HKAxisConfiguration setAxisLabelsDependOnPointTransform:](self, "setAxisLabelsDependOnPointTransform:", [configurationCopy axisLabelsDependOnPointTransform]);
  }
}

- (HKAxisLabelDataSource)labelDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDataSource);

  return WeakRetained;
}

@end