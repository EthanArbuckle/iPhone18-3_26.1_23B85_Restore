@interface CHSMutableWatchComplicationsCurvedLabelMetrics
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBezierPath:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation CHSMutableWatchComplicationsCurvedLabelMetrics

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSWatchComplicationsCurvedLabelMetrics alloc];

  return [(CHSWatchComplicationsCurvedLabelMetrics *)v4 _initWithInstance:self];
}

- (void)setBezierPath:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  bezierPath = self->super._bezierPath;
  self->super._bezierPath = v4;
}

- (void)setTextColor:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  textColor = self->super._textColor;
  self->super._textColor = v4;
}

@end