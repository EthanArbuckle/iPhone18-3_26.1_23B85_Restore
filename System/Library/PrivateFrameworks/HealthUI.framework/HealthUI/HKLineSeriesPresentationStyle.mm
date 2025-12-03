@interface HKLineSeriesPresentationStyle
- (void)setSineWaveSmoothingFactor:(double)factor;
@end

@implementation HKLineSeriesPresentationStyle

- (void)setSineWaveSmoothingFactor:(double)factor
{
  if (factor >= 0.5)
  {
    [HKLineSeriesPresentationStyle setSineWaveSmoothingFactor:];
  }

  if (factor < 0.0)
  {
    [HKLineSeriesPresentationStyle setSineWaveSmoothingFactor:];
  }

  self->_sineWaveSmoothingFactor = factor;
}

- (void)setSineWaveSmoothingFactor:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"sineWaveSmoothingFactor < 0.5" object:? file:? lineNumber:? description:?];
}

- (void)setSineWaveSmoothingFactor:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"sineWaveSmoothingFactor >= 0" object:? file:? lineNumber:? description:?];
}

@end