@interface FMMapAnnotationGestureRecognizer
- (FMMapAnnotationGestureRecognizer)init;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [(FMMapAnnotationGestureRecognizer *)self touchDelegate:a3];
  [v5 fingerOnAnnotation:self];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [(FMMapAnnotationGestureRecognizer *)self touchDelegate:a3];
  [v5 fingerOffAnnotation:self];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5 = [(FMMapAnnotationGestureRecognizer *)self touchDelegate:a3];
  [v5 fingerOffAnnotation:self];
}

@end