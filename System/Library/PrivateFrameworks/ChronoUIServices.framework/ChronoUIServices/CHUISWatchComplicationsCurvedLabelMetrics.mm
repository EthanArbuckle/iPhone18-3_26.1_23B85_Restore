@interface CHUISWatchComplicationsCurvedLabelMetrics
- (CHUISWatchComplicationsCurvedLabelMetrics)initWithPath:(id)path fontSize:(double)size textColor:(id)color accessoryPlacement:(unint64_t)placement accessoryPadding:(double)padding accessoryMaxSize:(CGSize)maxSize;
@end

@implementation CHUISWatchComplicationsCurvedLabelMetrics

- (CHUISWatchComplicationsCurvedLabelMetrics)initWithPath:(id)path fontSize:(double)size textColor:(id)color accessoryPlacement:(unint64_t)placement accessoryPadding:(double)padding accessoryMaxSize:(CGSize)maxSize
{
  height = maxSize.height;
  width = maxSize.width;
  pathCopy = path;
  colorCopy = color;
  v21.receiver = self;
  v21.super_class = CHUISWatchComplicationsCurvedLabelMetrics;
  v17 = [(CHSWatchComplicationsCurvedLabelMetrics *)&v21 init];
  v18 = v17;
  if (v17)
  {
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v17 setInterior:0];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setTracking:0.0];
    v19 = [objc_alloc(MEMORY[0x1E6994228]) initWithCGPath:{objc_msgSend(pathCopy, "CGPath")}];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setBezierPath:v19];

    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setFontSize:size];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setTextColor:colorCopy];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setAccessoryPlacement:placement];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setAccessoryPadding:padding];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setAccessoryMaxSize:width, height];
  }

  return v18;
}

@end