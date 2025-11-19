@interface HKAxisConfiguration
- (HKAxisConfiguration)init;
- (HKAxisLabelDataSource)labelDataSource;
- (void)applyOverridesFromAxisConfiguration:(id)a3;
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

- (void)applyOverridesFromAxisConfiguration:(id)a3
{
  v34 = a3;
  v4 = objc_alloc_init(HKAxisConfiguration);
  v5 = [v34 preferredStyle];
  v6 = [(HKAxisConfiguration *)v4 preferredStyle];

  if (v5 != v6)
  {
    v7 = [v34 preferredStyle];
    [(HKAxisConfiguration *)self setPreferredStyle:v7];
  }

  v8 = [v34 maxLabels];
  if (v8 != [(HKAxisConfiguration *)v4 maxLabels])
  {
    -[HKAxisConfiguration setMaxLabels:](self, "setMaxLabels:", [v34 maxLabels]);
  }

  v9 = [v34 minLabels];
  if (v9 != [(HKAxisConfiguration *)v4 minLabels])
  {
    -[HKAxisConfiguration setMinLabels:](self, "setMinLabels:", [v34 minLabels]);
  }

  v10 = [v34 maxLabelWidth];
  v11 = [(HKAxisConfiguration *)v4 maxLabelWidth];
  v12 = v11;
  if (v10 == v11)
  {

LABEL_14:
    goto LABEL_15;
  }

  v13 = [(HKAxisConfiguration *)v4 maxLabelWidth];
  if (!v13)
  {

    goto LABEL_13;
  }

  v14 = v13;
  v15 = [v34 maxLabelWidth];
  v16 = [(HKAxisConfiguration *)v4 maxLabelWidth];
  v17 = [v15 isEqual:v16];

  if ((v17 & 1) == 0)
  {
LABEL_13:
    v10 = [v34 maxLabelWidth];
    [(HKAxisConfiguration *)self setMaxLabelWidth:v10];
    goto LABEL_14;
  }

LABEL_15:
  v18 = [v34 horizontalAxisLabelSpacePadding];
  v19 = [(HKAxisConfiguration *)v4 horizontalAxisLabelSpacePadding];

  if (v18 != v19)
  {
    v20 = [v34 horizontalAxisLabelSpacePadding];
    [(HKAxisConfiguration *)self setHorizontalAxisLabelSpacePadding:v20];
  }

  v21 = [v34 transform];
  v22 = [(HKAxisConfiguration *)v4 transform];
  v23 = [v21 isEqual:v22];

  if ((v23 & 1) == 0)
  {
    v24 = [v34 transform];
    [(HKAxisConfiguration *)self setTransform:v24];
  }

  v25 = [v34 zoomScaleEngine];
  v26 = [(HKAxisConfiguration *)v4 zoomScaleEngine];

  if (v25 != v26)
  {
    v27 = [v34 zoomScaleEngine];
    [(HKAxisConfiguration *)self setZoomScaleEngine:v27];
  }

  v28 = [v34 labelDataSource];
  v29 = [(HKAxisConfiguration *)v4 labelDataSource];

  if (v28 != v29)
  {
    v30 = [v34 labelDataSource];
    [(HKAxisConfiguration *)self setLabelDataSource:v30];
  }

  v31 = [v34 overrideNoTopBaseline];
  if (v31 != [(HKAxisConfiguration *)v4 overrideNoTopBaseline])
  {
    -[HKAxisConfiguration setOverrideNoTopBaseline:](self, "setOverrideNoTopBaseline:", [v34 overrideNoTopBaseline]);
  }

  v32 = [v34 axisAnnotationsExcludeInterstitialAxisLabels];
  if (v32 != [(HKAxisConfiguration *)v4 axisAnnotationsExcludeInterstitialAxisLabels])
  {
    -[HKAxisConfiguration setAxisAnnotationsExcludeInterstitialAxisLabels:](self, "setAxisAnnotationsExcludeInterstitialAxisLabels:", [v34 axisAnnotationsExcludeInterstitialAxisLabels]);
  }

  v33 = [v34 axisLabelsDependOnPointTransform];
  if (v33 != [(HKAxisConfiguration *)v4 axisLabelsDependOnPointTransform])
  {
    -[HKAxisConfiguration setAxisLabelsDependOnPointTransform:](self, "setAxisLabelsDependOnPointTransform:", [v34 axisLabelsDependOnPointTransform]);
  }
}

- (HKAxisLabelDataSource)labelDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDataSource);

  return WeakRetained;
}

@end