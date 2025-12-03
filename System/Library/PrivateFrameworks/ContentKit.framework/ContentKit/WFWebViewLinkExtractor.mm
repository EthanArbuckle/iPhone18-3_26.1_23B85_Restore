@interface WFWebViewLinkExtractor
+ (id)linkPositionRetrievalJavaScript;
+ (void)extractLinksFromScriptResult:(id)result withDestinationWidth:(double)width completionHandler:(id)handler;
+ (void)extractLinksFromWKWebView:(id)view withDestinationWidth:(double)width completionHandler:(id)handler;
@end

@implementation WFWebViewLinkExtractor

+ (id)linkPositionRetrievalJavaScript
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:"function getMetricsDictionaryFromRect(rect) { return {'x': rect.left encoding:{'y': rect.top, 'width': rect.width, 'height': rect.height}; } var measuringStick = document.createElement('a'); measuringStick.href = 'http://prevueguide.com'; measuringStick.style.cssText = 'height: 100%; width: 100%; float: left'; document.body.appendChild(measuringStick); var pageMetrics = getMetricsDictionaryFromRect(measuringStick.getBoundingClientRect()); document.body.removeChild(measuringStick); var links = document.getElementsByTagName('a'); var linkDictionaries = []; for (var i = 0; i < links.length; ++i) { var link = links[i]; var rect = link.getBoundingClientRect(); if (link.href && rect.width && rect.height) { var linkDictionary = getMetricsDictionaryFromRect(rect); linkDictionary['href'] = link.href; linkDictionaries.push(linkDictionary); } } JSON.stringify({'pageMetrics': pageMetrics, 'links':linkDictionaries});", 4}];

  return v2;
}

+ (void)extractLinksFromScriptResult:(id)result withDestinationWidth:(double)width completionHandler:(id)handler
{
  resultCopy = result;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CCAAA0];
    v10 = [resultCopy dataUsingEncoding:4];
    v11 = [v9 JSONObjectWithData:v10 options:0 error:0];

    v12 = [v11 objectForKey:@"pageMetrics"];
    v13 = [v11 objectForKey:@"links"];
    v14 = [v12 objectForKey:@"width"];
    [v14 floatValue];
    v16 = width / v15;

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __94__WFWebViewLinkExtractor_extractLinksFromScriptResult_withDestinationWidth_completionHandler___block_invoke;
    v18[3] = &__block_descriptor_40_e25__24__0__NSDictionary_8Q16l;
    *&v18[4] = v16;
    v17 = [v13 if_compactMap:v18];
    handlerCopy[2](handlerCopy, v17);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

WFWebViewLink *__94__WFWebViewLinkExtractor_extractLinksFromScriptResult_withDestinationWidth_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"width"];
  [v4 floatValue];
  v6 = v5;

  v7 = [v3 objectForKey:@"height"];
  [v7 floatValue];
  v9 = v8;

  v10 = [v3 objectForKey:@"x"];
  [v10 floatValue];
  v12 = v11;

  v13 = [v3 objectForKey:@"y"];
  [v13 floatValue];
  v15 = v14;

  CGAffineTransformMakeScale(&v24, *(a1 + 32), *(a1 + 32));
  v26.origin.x = v12;
  v26.origin.y = v15;
  v26.size.width = v6;
  v26.size.height = v9;
  v27 = CGRectApplyAffineTransform(v26, &v24);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v20 = [v3 objectForKey:@"href"];

  v21 = [MEMORY[0x277CBEBC0] URLWithString:v20];
  if (v21)
  {
    v22 = [[WFWebViewLink alloc] initWithHref:v21 rect:x, y, width, height];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (void)extractLinksFromWKWebView:(id)view withDestinationWidth:(double)width completionHandler:(id)handler
{
  handlerCopy = handler;
  viewCopy = view;
  linkPositionRetrievalJavaScript = [self linkPositionRetrievalJavaScript];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__WFWebViewLinkExtractor_extractLinksFromWKWebView_withDestinationWidth_completionHandler___block_invoke;
  v12[3] = &unk_278344A58;
  widthCopy = width;
  v13 = handlerCopy;
  selfCopy = self;
  v11 = handlerCopy;
  [viewCopy evaluateJavaScript:linkPositionRetrievalJavaScript completionHandler:v12];
}

@end