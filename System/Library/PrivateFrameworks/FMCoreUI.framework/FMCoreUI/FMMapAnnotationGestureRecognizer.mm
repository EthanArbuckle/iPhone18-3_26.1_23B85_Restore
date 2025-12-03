@interface FMMapAnnotationGestureRecognizer
- (FMMapAnnotationGestureRecognizer)init;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation FMMapAnnotationGestureRecognizer

- (FMMapAnnotationGestureRecognizer)init
{
  v5.receiver = self;
  v5.super_class = FMMapAnnotationGestureRecognizer;
  v2 = [(FMMapAnnotationGestureRecognizer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMMapAnnotationGestureRecognizer *)v2 setCancelsTouchesInView:0];
  }

  return v3;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5 = [(FMMapAnnotationGestureRecognizer *)self touchDelegate:began];
  [v5 fingerOnAnnotation:self];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5 = [(FMMapAnnotationGestureRecognizer *)self touchDelegate:ended];
  [v5 fingerOffAnnotation:self];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5 = [(FMMapAnnotationGestureRecognizer *)self touchDelegate:cancelled];
  [v5 fingerOffAnnotation:self];
}

@end