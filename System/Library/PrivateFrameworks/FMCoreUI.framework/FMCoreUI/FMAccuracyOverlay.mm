@interface FMAccuracyOverlay
- (MKAnnotation)parentAnnotation;
- (id)description;
@end

@implementation FMAccuracyOverlay

- (id)description
{
  parentAnnotation = [(FMAccuracyOverlay *)self parentAnnotation];
  v4 = [parentAnnotation description];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  [(MKCircle *)self coordinate];
  v8 = v7;
  [(MKCircle *)self coordinate];
  v10 = v9;
  [(MKCircle *)self radius];
  v12 = [v5 stringWithFormat:@"<%@: %p> [%@] %.6f/%6f @ %f", v6, self, v4, v8, v10, v11];

  return v12;
}

- (MKAnnotation)parentAnnotation
{
  WeakRetained = objc_loadWeakRetained(&self->_parentAnnotation);

  return WeakRetained;
}

@end