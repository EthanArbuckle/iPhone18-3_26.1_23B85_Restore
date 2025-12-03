@interface MTPerfKit
- (MTPerfKit)initWithTopic:(id)topic;
- (id)flexibleMeasurementWithEventType:(id)type eventData:(id)data;
- (id)loadUrlMeasurementWithEventData:(id)data;
- (id)pageRenderMeasurementWithPageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data;
- (id)sampling;
@end

@implementation MTPerfKit

- (MTPerfKit)initWithTopic:(id)topic
{
  v7.receiver = self;
  v7.super_class = MTPerfKit;
  v3 = [(MTMetricsKitTemplate *)&v7 initWithTopic:topic];
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_sampling)
  {
    v3 = objc_alloc_init(MTSampling);
    sampling = selfCopy->_sampling;
    selfCopy->_sampling = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_sampling;

  return v5;
}

- (id)pageRenderMeasurementWithPageId:(id)id pageType:(id)type pageContext:(id)context eventData:(id)data
{
  dataCopy = data;
  contextCopy = context;
  typeCopy = type;
  idCopy = id;
  v14 = [MTPageRenderMeasurement alloc];
  eventHandlers = [(MTMetricsKitTemplate *)self eventHandlers];
  pageRender = [eventHandlers pageRender];
  v17 = [(MTPageRenderMeasurement *)v14 initWithMeasurementTransformer:pageRender pageId:idCopy pageType:typeCopy pageContext:contextCopy eventData:dataCopy];

  return v17;
}

- (id)loadUrlMeasurementWithEventData:(id)data
{
  dataCopy = data;
  v5 = [MTLoadUrlMeasurement alloc];
  eventHandlers = [(MTMetricsKitTemplate *)self eventHandlers];
  loadUrl = [eventHandlers loadUrl];
  v8 = [(MTPerfBaseMeasurement *)v5 initWithMeasurementTransformer:loadUrl eventData:dataCopy];

  return v8;
}

- (id)flexibleMeasurementWithEventType:(id)type eventData:(id)data
{
  dataCopy = data;
  typeCopy = type;
  v8 = [MTFlexiblePerfMeasurement alloc];
  eventHandlers = [(MTMetricsKitTemplate *)self eventHandlers];
  flexible = [eventHandlers flexible];
  v11 = [(MTFlexiblePerfMeasurement *)v8 initWithMeasurementTransformer:flexible eventType:typeCopy eventData:dataCopy];

  return v11;
}

@end