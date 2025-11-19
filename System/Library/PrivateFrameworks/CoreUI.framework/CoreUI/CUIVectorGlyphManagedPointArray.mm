@interface CUIVectorGlyphManagedPointArray
+ (id)createManagedPointArrayWrapping:(id)a3;
+ (id)createWithPointCount:(unint64_t)a3;
- ($57208586A15A58339C904728178D1914)rawArray;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation CUIVectorGlyphManagedPointArray

- ($57208586A15A58339C904728178D1914)rawArray
{
  numPoints = self->_rawArray.numPoints;
  pointComponents = self->_rawArray.pointComponents;
  result.var1 = numPoints;
  result.var0 = pointComponents;
  return result;
}

- (void)dealloc
{
  free(self->_rawArray.pointComponents);
  v3.receiver = self;
  v3.super_class = CUIVectorGlyphManagedPointArray;
  [(CUIVectorGlyphManagedPointArray *)&v3 dealloc];
}

+ (id)createManagedPointArrayWrapping:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  result = objc_alloc_init(CUIVectorGlyphManagedPointArray);
  *(result + 1) = var0;
  *(result + 2) = var1;
  return result;
}

+ (id)createWithPointCount:(unint64_t)a3
{
  v4 = objc_alloc_init(CUIVectorGlyphManagedPointArray);
  v4->_rawArray.pointComponents = malloc_type_calloc(2 * a3, 8uLL, 0x100004000313F17uLL);
  v4->_rawArray.numPoints = a3;
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  [(CUIVectorGlyphManagedPointArray *)self rawArray];
  v5 = 16 * v4;
  v6 = malloc_type_malloc(16 * v4, 0x74EBF93EuLL);
  memcpy(v6, [(CUIVectorGlyphManagedPointArray *)self rawArray], v5);
  [(CUIVectorGlyphManagedPointArray *)self rawArray];

  return [CUIVectorGlyphManagedPointArray createManagedPointArrayWrapping:v6, v7];
}

@end