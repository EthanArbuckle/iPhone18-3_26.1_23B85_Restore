@interface _HKGraphViewSeriesGroup
- (CGSize)lastLegendSize;
- (_HKGraphViewSeriesGroup)init;
@end

@implementation _HKGraphViewSeriesGroup

- (_HKGraphViewSeriesGroup)init
{
  v11.receiver = self;
  v11.super_class = _HKGraphViewSeriesGroup;
  v2 = [(_HKGraphViewSeriesGroup *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    zoomToSeriesMapping = v2->_zoomToSeriesMapping;
    v2->_zoomToSeriesMapping = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentSeries = v2->_currentSeries;
    v2->_currentSeries = v5;

    selectionContext = v2->_selectionContext;
    v2->_selectionContext = 0;

    v8 = objc_alloc_init(_HKGraphViewAxisAnnotationHandler);
    axisAnnotationHandler = v2->_axisAnnotationHandler;
    v2->_axisAnnotationHandler = v8;
  }

  return v2;
}

- (CGSize)lastLegendSize
{
  width = self->_lastLegendSize.width;
  height = self->_lastLegendSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end