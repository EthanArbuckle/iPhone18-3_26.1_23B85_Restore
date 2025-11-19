@interface HKLineSeriesPresentationStyle
- (void)setSineWaveSmoothingFactor:(double)a3;
@end

@implementation HKLineSeriesPresentationStyle

- (void)setSineWaveSmoothingFactor:(double)a3
{
  if (a3 >= 0.5)
  {
    [HKLineSeriesPresentationStyle setSineWaveSmoothingFactor:];
  }

  if (a3 < 0.0)
  {
    [HKLineSeriesPresentationStyle setSineWaveSmoothingFactor:];
  }

  self->_sineWaveSmoothingFactor = a3;
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