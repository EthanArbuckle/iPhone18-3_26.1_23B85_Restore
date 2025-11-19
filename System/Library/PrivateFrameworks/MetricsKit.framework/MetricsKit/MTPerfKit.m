@interface MTPerfKit
- (MTPerfKit)initWithTopic:(id)a3;
- (id)flexibleMeasurementWithEventType:(id)a3 eventData:(id)a4;
- (id)loadUrlMeasurementWithEventData:(id)a3;
- (id)pageRenderMeasurementWithPageId:(id)a3 pageType:(id)a4 pageContext:(id)a5 eventData:(id)a6;
- (id)sampling;
@end

@implementation MTPerfKit

- (MTPerfKit)initWithTopic:(id)a3
{
  v7.receiver = self;
  v7.super_class = MTPerfKit;
  v3 = [(MTMetricsKitTemplate *)&v7 initWithTopic:a3];
  if (v3)
  {
    v4 = [(MTObject *)[MTPerfEventHandlers alloc] initWithMetricsKit:v3];
    [(MTMetricsKitTemplate *)v3 setEventHandlers:v4];

    v5 = [(MTObject *)[MTPerfUtils alloc] initWithMetricsKit:v3];
    [(MTMetricsKitTemplate *)v3 setUtils:v5];
  }

  return v3;
}

- (id)sampling
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_sampling)
  {
    v3 = objc_alloc_init(MTSampling);
    sampling = v2->_sampling;
    v2->_sampling = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_sampling;

  return v5;
}

- (id)pageRenderMeasurementWithPageId:(id)a3 pageType:(id)a4 pageContext:(id)a5 eventData:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [MTPageRenderMeasurement alloc];
  v15 = [(MTMetricsKitTemplate *)self eventHandlers];
  v16 = [v15 pageRender];
  v17 = [(MTPageRenderMeasurement *)v14 initWithMeasurementTransformer:v16 pageId:v13 pageType:v12 pageContext:v11 eventData:v10];

  return v17;
}

- (id)loadUrlMeasurementWithEventData:(id)a3
{
  v4 = a3;
  v5 = [MTLoadUrlMeasurement alloc];
  v6 = [(MTMetricsKitTemplate *)self eventHandlers];
  v7 = [v6 loadUrl];
  v8 = [(MTPerfBaseMeasurement *)v5 initWithMeasurementTransformer:v7 eventData:v4];

  return v8;
}

- (id)flexibleMeasurementWithEventType:(id)a3 eventData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [MTFlexiblePerfMeasurement alloc];
  v9 = [(MTMetricsKitTemplate *)self eventHandlers];
  v10 = [v9 flexible];
  v11 = [(MTFlexiblePerfMeasurement *)v8 initWithMeasurementTransformer:v10 eventType:v7 eventData:v6];

  return v11;
}

@end