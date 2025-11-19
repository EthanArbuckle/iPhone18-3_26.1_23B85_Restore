@interface CHUISWatchComplicationsCurvedLabelMetrics
- (CHUISWatchComplicationsCurvedLabelMetrics)initWithPath:(id)a3 fontSize:(double)a4 textColor:(id)a5 accessoryPlacement:(unint64_t)a6 accessoryPadding:(double)a7 accessoryMaxSize:(CGSize)a8;
@end

@implementation CHUISWatchComplicationsCurvedLabelMetrics

- (CHUISWatchComplicationsCurvedLabelMetrics)initWithPath:(id)a3 fontSize:(double)a4 textColor:(id)a5 accessoryPlacement:(unint64_t)a6 accessoryPadding:(double)a7 accessoryMaxSize:(CGSize)a8
{
  height = a8.height;
  width = a8.width;
  v15 = a3;
  v16 = a5;
  v21.receiver = self;
  v21.super_class = CHUISWatchComplicationsCurvedLabelMetrics;
  v17 = [(CHSWatchComplicationsCurvedLabelMetrics *)&v21 init];
  v18 = v17;
  if (v17)
  {
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v17 setInterior:0];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setTracking:0.0];
    v19 = [objc_alloc(MEMORY[0x1E6994228]) initWithCGPath:{objc_msgSend(v15, "CGPath")}];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setBezierPath:v19];

    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setFontSize:a4];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setTextColor:v16];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setAccessoryPlacement:a6];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setAccessoryPadding:a7];
    [(CHSMutableWatchComplicationsCurvedLabelMetrics *)v18 setAccessoryMaxSize:width, height];
  }

  return v18;
}

@end