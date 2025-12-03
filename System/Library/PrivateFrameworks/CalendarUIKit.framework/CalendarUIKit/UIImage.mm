@interface UIImage
- (void)cuik_drawAtPoint:(double)point;
@end

@implementation UIImage

uint64_t __65__UIImage_CUIKPlatforms__cuik_drawImageWithSize_scale_drawBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 CGContext];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)cuik_drawAtPoint:(double)point
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_3(self, a2, point, a4);
  }

  return self;
}

void *__47__UIImage_CUIKPlatforms__cuik_imageWithInsets___block_invoke(uint64_t a1, const char *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return OUTLINED_FUNCTION_0_3(result, a2, *(a1 + 40), *(a1 + 48));
  }

  return result;
}

@end