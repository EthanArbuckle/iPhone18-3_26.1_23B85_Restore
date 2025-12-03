@interface _DPPiRapporAlgorithm
- (BOOL)encodeClassIndex:(unint64_t)index coeffs:(unsigned int *)coeffs phi0Buf:(unsigned int *)buf otherPhiBuf:(unsigned int *)phiBuf;
- (id)decode:(id)decode;
- (id)encodeClassIndex:(unint64_t)index;
- (id)encodeClassIndices:(id)indices;
@end

@implementation _DPPiRapporAlgorithm

- (id)encodeClassIndex:(unint64_t)index
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [(_DPPiRapporAlgorithm *)self encodeClassIndices:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)encodeClassIndices:(id)indices
{
  indicesCopy = indices;
  v5 = 4 * [indicesCopy count];
  v6 = [MEMORY[0x277CBEB28] dataWithLength:v5];
  v7 = [MEMORY[0x277CBEB28] dataWithLength:{v5 * -[_DPPiRapporAlgorithm numberOfOtherPhi](self, "numberOfOtherPhi")}];
  v20 = v6;
  bytes = [v6 bytes];
  bytes2 = [v7 bytes];
  context = objc_autoreleasePoolPush();
  v10 = [MEMORY[0x277CBEB28] dataWithLength:{4 * -[_DPPiRapporAlgorithm numberOfOtherPhi](self, "numberOfOtherPhi")}];
  bytes3 = [v10 bytes];
  if ([indicesCopy count])
  {
    v12 = 0;
    while (1)
    {
      v13 = [indicesCopy objectAtIndexedSubscript:v12];
      unsignedIntegerValue = [v13 unsignedIntegerValue];

      if (unsignedIntegerValue >= [(_DPPiRapporAlgorithm *)self numberOfClasses])
      {
        break;
      }

      if (![(_DPPiRapporAlgorithm *)self encodeClassIndex:unsignedIntegerValue coeffs:bytes3 phi0Buf:bytes otherPhiBuf:bytes2 + 4 * [(_DPPiRapporAlgorithm *)self numberOfOtherPhi]* v12])
      {
        v17 = +[_DPLog framework];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [_DPPiRapporAlgorithm encodeClassIndices:];
        }

        goto LABEL_11;
      }

      ++v12;
      bytes += 4;
      if (v12 >= [indicesCopy count])
      {
        goto LABEL_6;
      }
    }

    v17 = +[_DPLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_DPPiRapporAlgorithm encodeClassIndices:];
    }

LABEL_11:
    v15 = v20;

    objc_autoreleasePoolPop(context);
    v16 = 0;
  }

  else
  {
LABEL_6:

    objc_autoreleasePoolPop(context);
    v15 = v20;
    v16 = [_DPPiRapporEncoderResult encoderResultWithPhi0:v20 otherPhi:v7];
  }

  return v16;
}

- (id)decode:(id)decode
{
  decodeCopy = decode;
  numberOfEncodedIndices = [decodeCopy numberOfEncodedIndices];
  phi0 = [decodeCopy phi0];
  bytes = [phi0 bytes];

  otherPhi = [decodeCopy otherPhi];
  bytes2 = [otherPhi bytes];

  numberOfOtherPhi = [decodeCopy numberOfOtherPhi];
  if (numberOfOtherPhi == [(_DPPiRapporAlgorithm *)self numberOfOtherPhi])
  {
    v23 = decodeCopy;
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[_DPPiRapporAlgorithm numberOfClasses](self, "numberOfClasses")}];
    context = objc_autoreleasePoolPush();
    v21 = [MEMORY[0x277CBEB28] dataWithLength:4 * numberOfOtherPhi];
    bytes3 = [v21 bytes];
    if ([(_DPPiRapporAlgorithm *)self numberOfClasses])
    {
      v11 = 0;
      v26 = v9;
      v27 = numberOfEncodedIndices;
      do
      {
        v28 = v11;
        pi_rappor_get_coefficients(bytes3, numberOfOtherPhi, v11, [(_DPPiRapporAlgorithm *)self prime]);
        v12 = 0;
        if (numberOfEncodedIndices)
        {
          v14 = bytes2;
          v13 = bytes;
          do
          {
            v15 = *v13++;
            v16 = dotprod_mod32(bytes3, v14, numberOfOtherPhi, [(_DPPiRapporAlgorithm *)self prime]);
            v17 = addmod32(v16, v15, [(_DPPiRapporAlgorithm *)self prime]);
            v12 += pi_rappor_BOOL_func(v17, [(_DPPiRapporAlgorithm *)self threshold]);
            v14 += numberOfOtherPhi;
            --numberOfEncodedIndices;
          }

          while (numberOfEncodedIndices);
        }

        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
        v9 = v26;
        [v26 setObject:v18 atIndexedSubscript:v28];

        v11 = v28 + 1;
        numberOfEncodedIndices = v27;
      }

      while (v28 + 1 < [(_DPPiRapporAlgorithm *)self numberOfClasses]);
    }

    objc_autoreleasePoolPop(context);
    decodeCopy = v23;
  }

  else
  {
    v19 = +[_DPLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(_DPPiRapporAlgorithm *)self decode:numberOfOtherPhi, v19];
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)encodeClassIndex:(unint64_t)index coeffs:(unsigned int *)coeffs phi0Buf:(unsigned int *)buf otherPhiBuf:(unsigned int *)phiBuf
{
  if ([(_DPPiRapporAlgorithm *)self numberOfOtherPhi])
  {
    v11 = 0;
    do
    {
      phiBuf[v11++] = arc4random_uniform([(_DPPiRapporAlgorithm *)self prime]);
    }

    while (v11 < [(_DPPiRapporAlgorithm *)self numberOfOtherPhi]);
  }

  coin = [(_DPPiRapporAlgorithm *)self coin];
  flip = [coin flip];

  pi_rappor_get_coefficients(coeffs, [(_DPPiRapporAlgorithm *)self numberOfOtherPhi], index, [(_DPPiRapporAlgorithm *)self prime]);
  v14 = dotprod_mod32(coeffs, phiBuf, [(_DPPiRapporAlgorithm *)self numberOfOtherPhi], [(_DPPiRapporAlgorithm *)self prime]);
  v15 = submod32(0, v14, [(_DPPiRapporAlgorithm *)self prime]);
  v22 = 0;
  prime = [(_DPPiRapporAlgorithm *)self prime];
  pi_rappor_inverse_BOOL_func(flip, [(_DPPiRapporAlgorithm *)self threshold], [(_DPPiRapporAlgorithm *)self prime], &v22, &prime);
  v17 = prime;
  v16 = v22;
  if (prime <= v22)
  {
    v19 = +[_DPLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [_DPPiRapporAlgorithm encodeClassIndex:&prime coeffs:v19 phi0Buf:? otherPhiBuf:?];
    }
  }

  else
  {
    v18 = arc4random_uniform(prime - v22);
    *buf = addmod32(v18 + v16, v15, [(_DPPiRapporAlgorithm *)self prime]);
  }

  return v17 > v16;
}

- (void)initWithNumberOfClasses:prime:alpha0:alpha1:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithNumberOfClasses:prime:alpha0:alpha1:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithNumberOfClasses:prime:alpha0:alpha1:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithNumberOfClasses:prime:alpha0:alpha1:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithNumberOfClasses:prime:alpha0:alpha1:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithNumberOfClasses:prime:alpha0:alpha1:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)encodeClassIndices:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)encodeClassIndices:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)decode:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 134218240;
  v7 = [a1 numberOfOtherPhi];
  v8 = 2048;
  v9 = a2;
  _os_log_error_impl(&dword_22622D000, a3, OS_LOG_TYPE_ERROR, "The provided Pi-Rappor encoder result is likely not generated by this Pi-Rappor algorithm instance, expected numberOfOtherPhi: %lu, got numberOfOtherPhi: %lu", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)encodeClassIndex:(os_log_t)log coeffs:phi0Buf:otherPhiBuf:.cold.1(int *a1, int *a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_22622D000, log, OS_LOG_TYPE_ERROR, "Pi-Rappor algorithm failed to sample phi0 within lower bound (%d) and upper bound (%d).", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

@end