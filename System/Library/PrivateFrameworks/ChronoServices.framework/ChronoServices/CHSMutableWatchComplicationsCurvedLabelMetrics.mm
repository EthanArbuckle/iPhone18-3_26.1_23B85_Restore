@interface CHSMutableWatchComplicationsCurvedLabelMetrics
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBezierPath:(id)path;
- (void)setTextColor:(id)color;
@end

@implementation CHSMutableWatchComplicationsCurvedLabelMetrics

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSWatchComplicationsCurvedLabelMetrics alloc];

  return [(CHSWatchComplicationsCurvedLabelMetrics *)v4 _initWithInstance:self];
}

- (void)setBezierPath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy copy];
  bezierPath = self->super._bezierPath;
  self->super._bezierPath = v4;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  v4 = [colorCopy copy];
  textColor = self->super._textColor;
  self->super._textColor = v4;
}

@end