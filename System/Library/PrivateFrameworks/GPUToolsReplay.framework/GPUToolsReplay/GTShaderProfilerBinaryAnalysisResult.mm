@interface GTShaderProfilerBinaryAnalysisResult
+ (id)createWithAnalysisResult:(const void *)a3;
+ (id)dataFromArchivedDataURL:(id)a3;
- (GTShaderProfilerBinaryAnalysisResult)init;
- (GTShaderProfilerBinaryAnalysisResult)initWithCoder:(id)a3;
- (const)binaryLocations;
- (const)binaryRanges;
- (const)branchTargets;
- (const)clauses;
- (const)instructions;
- (const)lastBinaryLocation;
- (const)lastBinaryRange;
- (const)lastBranchTarget;
- (const)lastClause;
- (const)lastInstruction;
- (const)lastRegisterInfo;
- (const)registerInfo;
- (id).cxx_construct;
- (id)stringAtIndex:(unint64_t)a3;
- (unint64_t)binaryLocationCount;
- (unint64_t)binaryRangeCount;
- (unint64_t)branchTargetCount;
- (unint64_t)clauseCount;
- (unint64_t)instructionCount;
- (unint64_t)maxOffset;
- (unint64_t)registerInfoCount;
- (unint64_t)registerInfoOffsetForInstructionIndex:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setInstructionData:(id)a3;
- (void)setRegisterInfoData:(id)a3;
@end

@implementation GTShaderProfilerBinaryAnalysisResult

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 8) = 0;
  *(self + 3) = 0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 168) = 0u;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 32) = 0;
  *(self + 33) = 0;
  *(self + 34) = 0;
  return self;
}

- (unint64_t)registerInfoOffsetForInstructionIndex:(unint64_t)a3
{
  if ([(GTShaderProfilerBinaryAnalysisResult *)self instructionCount]<= a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  begin = self->_registerOffsets.__begin_;
  if (a3 >= self->_registerOffsets.__end_ - begin)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return begin[a3];
  }
}

- (unint64_t)maxOffset
{
  result = [(GTShaderProfilerBinaryAnalysisResult *)self instructionCount];
  if (result)
  {
    v4 = [(GTShaderProfilerBinaryAnalysisResult *)self lastInstruction][8];
    return [(GTShaderProfilerBinaryAnalysisResult *)self lastInstruction][16] + v4;
  }

  return result;
}

- (void)setRegisterInfoData:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_registerInfoData, a3);
  if (self->_instructionData)
  {
    self->_registerOffsets.__end_ = self->_registerOffsets.__begin_;
    v8 = 0;
    v5 = [(GTShaderProfilerBinaryAnalysisResult *)self instructions];
    if (v5 < [(GTShaderProfilerBinaryAnalysisResult *)self lastInstruction])
    {
      v6 = 0;
      do
      {
        std::vector<unsigned long>::push_back[abi:nn200100](&self->_registerOffsets, &v8);
        v6 += v5->var7;
        v8 = v6;
        v5 = (v5 + 36);
      }

      while (v5 < [(GTShaderProfilerBinaryAnalysisResult *)self lastInstruction]);
    }
  }
}

- (void)setInstructionData:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_instructionData, a3);
  if (self->_registerInfoData)
  {
    self->_registerOffsets.__end_ = self->_registerOffsets.__begin_;
    v8 = 0;
    v5 = [(GTShaderProfilerBinaryAnalysisResult *)self instructions];
    if (v5 < [(GTShaderProfilerBinaryAnalysisResult *)self lastInstruction])
    {
      v6 = 0;
      do
      {
        std::vector<unsigned long>::push_back[abi:nn200100](&self->_registerOffsets, &v8);
        v6 += v5->var7;
        v8 = v6;
        v5 = (v5 + 36);
      }

      while (v5 < [(GTShaderProfilerBinaryAnalysisResult *)self lastInstruction]);
    }
  }
}

- (const)lastRegisterInfo
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    v4 = pBinaryInfo[25];
    v3 = pBinaryInfo[26];
    if (v4 == v3)
    {
      return 0;
    }
  }

  else
  {
    result = [(GTShaderProfilerBinaryAnalysisResult *)self registerInfoCount];
    if (!result)
    {
      return result;
    }

    v7 = [(NSData *)self->_registerInfoData bytes];
    v3 = &v7[8 * [(GTShaderProfilerBinaryAnalysisResult *)self registerInfoCount]];
  }

  return (v3 - 8);
}

- (const)lastBranchTarget
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    v4 = pBinaryInfo[16];
    v3 = pBinaryInfo[17];
    if (v4 == v3)
    {
      return 0;
    }
  }

  else
  {
    result = [(GTShaderProfilerBinaryAnalysisResult *)self branchTargetCount];
    if (!result)
    {
      return result;
    }

    v7 = [(NSData *)self->_branchTargetData bytes];
    v3 = &v7[8 * [(GTShaderProfilerBinaryAnalysisResult *)self branchTargetCount]];
  }

  return (v3 - 8);
}

- (const)lastBinaryLocation
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    v4 = pBinaryInfo[19];
    v3 = pBinaryInfo[20];
    if (v4 == v3)
    {
      return 0;
    }
  }

  else
  {
    result = [(GTShaderProfilerBinaryAnalysisResult *)self binaryLocationCount];
    if (!result)
    {
      return result;
    }

    v7 = [(NSData *)self->_binaryLocationData bytes];
    v3 = &v7[16 * [(GTShaderProfilerBinaryAnalysisResult *)self binaryLocationCount]];
  }

  return (v3 - 16);
}

- (const)lastBinaryRange
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    v4 = pBinaryInfo[22];
    v3 = pBinaryInfo[23];
    if (v4 == v3)
    {
      return 0;
    }
  }

  else
  {
    result = [(GTShaderProfilerBinaryAnalysisResult *)self binaryRangeCount];
    if (!result)
    {
      return result;
    }

    v7 = [(NSData *)self->_binaryRangeData bytes];
    v3 = &v7[28 * [(GTShaderProfilerBinaryAnalysisResult *)self binaryRangeCount]];
  }

  return (v3 - 28);
}

- (const)lastClause
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    v4 = pBinaryInfo[13];
    v3 = pBinaryInfo[14];
    if (v4 == v3)
    {
      return 0;
    }
  }

  else
  {
    result = [(GTShaderProfilerBinaryAnalysisResult *)self clauseCount];
    if (!result)
    {
      return result;
    }

    v7 = [(NSData *)self->_clauseData bytes];
    v3 = &v7[32 * [(GTShaderProfilerBinaryAnalysisResult *)self clauseCount]];
  }

  return (v3 - 32);
}

- (const)lastInstruction
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    v4 = pBinaryInfo[10];
    v3 = pBinaryInfo[11];
    if (v4 == v3)
    {
      return 0;
    }
  }

  else
  {
    result = [(GTShaderProfilerBinaryAnalysisResult *)self instructionCount];
    if (!result)
    {
      return result;
    }

    v7 = [(NSData *)self->_instructionData bytes];
    v3 = &v7[36 * [(GTShaderProfilerBinaryAnalysisResult *)self instructionCount]];
  }

  return (v3 - 36);
}

- (unint64_t)registerInfoCount
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return (pBinaryInfo[26] - pBinaryInfo[25]) >> 3;
  }

  else
  {
    return [(NSData *)self->_registerInfoData length:v2]>> 3;
  }
}

- (unint64_t)branchTargetCount
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return (pBinaryInfo[17] - pBinaryInfo[16]) >> 3;
  }

  else
  {
    return [(NSData *)self->_branchTargetData length:v2]>> 3;
  }
}

- (unint64_t)binaryLocationCount
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return (pBinaryInfo[20] - pBinaryInfo[19]) >> 4;
  }

  else
  {
    return [(NSData *)self->_binaryLocationData length:v2]>> 4;
  }
}

- (unint64_t)binaryRangeCount
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return 0x6DB6DB6DB6DB6DB7 * ((pBinaryInfo[23] - pBinaryInfo[22]) >> 2);
  }

  else
  {
    return [(NSData *)self->_binaryRangeData length:v2]/ 0x1C;
  }
}

- (unint64_t)clauseCount
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return (pBinaryInfo[14] - pBinaryInfo[13]) >> 5;
  }

  else
  {
    return [(NSData *)self->_clauseData length:v2]>> 5;
  }
}

- (unint64_t)instructionCount
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return 0x8E38E38E38E38E39 * ((pBinaryInfo[11] - pBinaryInfo[10]) >> 2);
  }

  else
  {
    return [(NSData *)self->_instructionData length:v2]/ 0x24;
  }
}

- (const)registerInfo
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return *(pBinaryInfo + 25);
  }

  else
  {
    return [(NSData *)self->_registerInfoData bytes];
  }
}

- (const)branchTargets
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return *(pBinaryInfo + 16);
  }

  else
  {
    return [(NSData *)self->_branchTargetData bytes];
  }
}

- (const)binaryLocations
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return *(pBinaryInfo + 19);
  }

  else
  {
    return [(NSData *)self->_binaryLocationData bytes];
  }
}

- (const)binaryRanges
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return *(pBinaryInfo + 22);
  }

  else
  {
    return [(NSData *)self->_binaryRangeData bytes];
  }
}

- (const)clauses
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return *(pBinaryInfo + 13);
  }

  else
  {
    return [(NSData *)self->_clauseData bytes];
  }
}

- (const)instructions
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo)
  {
    return *(pBinaryInfo + 10);
  }

  else
  {
    return [(NSData *)self->_instructionData bytes];
  }
}

- (id)stringAtIndex:(unint64_t)a3
{
  pBinaryInfo = self->_pBinaryInfo;
  if (pBinaryInfo && (v5 = (pBinaryInfo + 7), v4 = pBinaryInfo[7], 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 1) - v4) >> 3) > a3))
  {
    v6 = (v4 + 24 * a3);
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  }

  else
  {
    v7 = [(NSArray *)self->_strings objectAtIndexedSubscript:a3];
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v11 = a3;
  [v11 encodeInteger:version forKey:@"version"];
  [v11 encodeInteger:36 forKey:@"instructionSize"];
  [v11 encodeInteger:32 forKey:@"clauseSize"];
  [v11 encodeInteger:8 forKey:@"branchTargetSize"];
  [v11 encodeInteger:28 forKey:@"binaryRangeSize"];
  [v11 encodeInteger:16 forKey:@"binaryLocationSize"];
  [v11 encodeInteger:8 forKey:@"registerInfoSize"];
  v5 = [(GTShaderProfilerBinaryAnalysisResult *)self instructionData];
  [v11 encodeObject:v5 forKey:@"instructionData"];

  v6 = [(GTShaderProfilerBinaryAnalysisResult *)self clauseData];
  [v11 encodeObject:v6 forKey:@"clauseData"];

  v7 = [(GTShaderProfilerBinaryAnalysisResult *)self branchTargetData];
  [v11 encodeObject:v7 forKey:@"branchTargetData"];

  v8 = [(GTShaderProfilerBinaryAnalysisResult *)self binaryRangeData];
  [v11 encodeObject:v8 forKey:@"binaryRangeData"];

  v9 = [(GTShaderProfilerBinaryAnalysisResult *)self binaryLocationData];
  [v11 encodeObject:v9 forKey:@"binaryLocationData"];

  v10 = [(GTShaderProfilerBinaryAnalysisResult *)self registerInfoData];
  [v11 encodeObject:v10 forKey:@"registerInfoData"];

  [v11 encodeObject:self->_strings forKey:@"strings"];
}

- (GTShaderProfilerBinaryAnalysisResult)initWithCoder:(id)a3
{
  v49[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = GTShaderProfilerBinaryAnalysisResult;
  v5 = [(GTShaderProfilerBinaryAnalysisResult *)&v47 init];
  if (!v5)
  {
LABEL_25:
    v7 = v5;
    goto LABEL_26;
  }

  v6 = [v4 decodeIntForKey:@"version"];
  if (v6 > 3)
  {
LABEL_3:
    v7 = 0;
    goto LABEL_26;
  }

  v8 = v6;
  if (v6 < 1)
  {
LABEL_14:
    v15 = MEMORY[0x277CBEB98];
    v49[0] = objc_opt_class();
    v49[1] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
    v17 = [v15 setWithArray:v16];

    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"instructionData"];
    instructionData = v5->_instructionData;
    v5->_instructionData = v18;

    v20 = [v4 decodeObjectOfClasses:v17 forKey:@"clauseData"];
    clauseData = v5->_clauseData;
    v5->_clauseData = v20;

    v22 = [v4 decodeObjectOfClasses:v17 forKey:@"branchTargetData"];
    branchTargetData = v5->_branchTargetData;
    v5->_branchTargetData = v22;

    v24 = [v4 decodeObjectOfClasses:v17 forKey:@"binaryLocationData"];
    binaryLocationData = v5->_binaryLocationData;
    v5->_binaryLocationData = v24;

    v26 = [v4 decodeObjectOfClasses:v17 forKey:@"binaryRangeData"];
    v27 = v26;
    if (v8 != 3)
    {
      v28 = [v26 bytes];
      v29 = [v27 length];
      v30 = v29 / 0x18;
      v31 = [MEMORY[0x277CBEB28] dataWithCapacity:28 * (v29 / 0x18)];
      if (v29 >= 0x18)
      {
        v32 = (v28 + 16);
        do
        {
          LODWORD(v46[0]) = 0;
          *(v46 + 4) = *(v32 - 1);
          v33 = *v32;
          v32 += 3;
          *(&v46[2] + 4) = v33;
          [v31 appendBytes:v46 length:28];
          --v30;
        }

        while (v30);
      }

      v34 = [v31 copy];

      v27 = v34;
    }

    objc_storeStrong(&v5->_binaryRangeData, v27);
    v35 = [v4 decodeObjectOfClasses:v17 forKey:@"registerInfoData"];
    registerInfoData = v5->_registerInfoData;
    v5->_registerInfoData = v35;

    v37 = MEMORY[0x277CBEB98];
    v48[0] = objc_opt_class();
    v48[1] = objc_opt_class();
    v48[2] = objc_opt_class();
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
    v39 = [v37 setWithArray:v38];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"strings"];
    strings = v5->_strings;
    v5->_strings = v40;

    if (v8 >= 2)
    {
      if (v5->_registerInfoData)
      {
        v42 = [(GTShaderProfilerBinaryAnalysisResult *)v5 instructions];
        if (v42 < [(GTShaderProfilerBinaryAnalysisResult *)v5 lastInstruction])
        {
          v43 = 0;
          do
          {
            std::vector<unsigned long>::push_back[abi:nn200100](&v5->_registerOffsets, v46);
            v43 += *(v42 + 33);
            v42 += 36;
          }

          while (v42 < [(GTShaderProfilerBinaryAnalysisResult *)v5 lastInstruction]);
        }
      }
    }

    v5->_pBinaryInfo = 0;

    goto LABEL_25;
  }

  v9 = [v4 decodeIntegerForKey:@"instructionSize"];
  v10 = [v4 decodeIntegerForKey:@"clauseSize"];
  v11 = [v4 decodeIntegerForKey:@"branchTargetSize"];
  v12 = [v4 decodeIntegerForKey:@"binaryRangeSize"];
  v13 = [v4 decodeIntegerForKey:@"binaryLocationSize"];
  v7 = 0;
  if (v9 == 36 && v10 == 32 && v11 == 8)
  {
    v7 = 0;
    v14 = 24;
    if (v8 == 3)
    {
      v14 = 28;
    }

    if (v12 == v14 && v13 == 16)
    {
      if (v8 == 2 && [v4 decodeIntegerForKey:@"registerInfoSize"] != 8)
      {
        goto LABEL_3;
      }

      goto LABEL_14;
    }
  }

LABEL_26:

  v44 = *MEMORY[0x277D85DE8];
  return v7;
}

- (GTShaderProfilerBinaryAnalysisResult)init
{
  v3.receiver = self;
  v3.super_class = GTShaderProfilerBinaryAnalysisResult;
  result = [(GTShaderProfilerBinaryAnalysisResult *)&v3 init];
  if (result)
  {
    result->_version = 3;
    result->_pBinaryInfo = 0;
  }

  return result;
}

+ (id)dataFromArchivedDataURL:(id)a3
{
  v9 = 0;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3 options:0 error:&v9];
  v4 = v9;
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v8];
    v5 = v8;
  }

  return v6;
}

+ (id)createWithAnalysisResult:(const void *)a3
{
  v4 = objc_opt_new();
  v5 = v4;
  v6 = v4 + 8;
  if ((v4 + 8) == a3)
  {
    *(v4 + 32) = *(a3 + 6);
  }

  else
  {
    v8 = *a3;
    v7 = *(a3 + 1);
    v9 = v7 - *a3;
    v10 = *(v4 + 24);
    v11 = *(v4 + 8);
    if (v10 - v11 < v9)
    {
      v12 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 3);
      if (v11)
      {
        v13 = *(v4 + 16);
        v14 = *(v4 + 8);
        if (v13 != v11)
        {
          do
          {
            v13 -= 7;
            std::allocator<GTWaitInstructionInfo>::destroy[abi:nn200100](v13);
          }

          while (v13 != v11);
          v14 = *v6;
        }

        *(v5 + 16) = v11;
        operator delete(v14);
        v10 = 0;
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
      }

      if (v12 <= 0x492492492492492)
      {
        v15 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 3);
        v16 = 2 * v15;
        if (2 * v15 <= v12)
        {
          v16 = v12;
        }

        if (v15 >= 0x249249249249249)
        {
          v17 = 0x492492492492492;
        }

        else
        {
          v17 = v16;
        }

        if (v17 <= 0x492492492492492)
        {
          operator new();
        }
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v18 = *(v4 + 16) - v11;
    if (v18 >= v9)
    {
      v19 = std::__copy_impl::operator()[abi:nn200100]<GTWaitInstructionInfo *,GTWaitInstructionInfo *,GTWaitInstructionInfo *>(*a3, *(a3 + 1), *(v4 + 8));
      for (i = *(v5 + 16); i != v19; std::allocator<GTWaitInstructionInfo>::destroy[abi:nn200100](i))
      {
        i -= 7;
      }

      *(v5 + 16) = v19;
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<GTWaitInstructionInfo *,GTWaitInstructionInfo *,GTWaitInstructionInfo *>(*a3, v8 + v18, *(v4 + 8));
      *(v5 + 16) = std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<GTWaitInstructionInfo>,GTWaitInstructionInfo*,GTWaitInstructionInfo*,GTWaitInstructionInfo*>((v8 + v18), v7, *(v5 + 16));
    }

    v22 = (v5 + 40);
    v21 = *(v5 + 40);
    *(v5 + 32) = *(a3 + 6);
    v24 = *(a3 + 4);
    v23 = *(a3 + 5);
    v25 = v23 - v24;
    v26 = *(v5 + 56);
    if (v26 - v21 < (v23 - v24))
    {
      v27 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 5);
      if (v21)
      {
        std::vector<GTRegisterPressureInstructionInfo>::__base_destruct_at_end[abi:nn200100](v5 + 40, v21);
        operator delete(*v22);
        v26 = 0;
        *v22 = 0;
        *(v5 + 48) = 0;
        *(v5 + 56) = 0;
      }

      if (v27 <= 0x2AAAAAAAAAAAAAALL)
      {
        v28 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 5);
        v29 = 2 * v28;
        if (2 * v28 <= v27)
        {
          v29 = v27;
        }

        if (v28 >= 0x155555555555555)
        {
          v30 = 0x2AAAAAAAAAAAAAALL;
        }

        else
        {
          v30 = v29;
        }

        if (v30 <= 0x2AAAAAAAAAAAAAALL)
        {
          operator new();
        }
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v31 = *(v5 + 48) - v21;
    if (v31 >= v25)
    {
      v32 = std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,GTRegisterPressureInstructionInfo *,GTRegisterPressureInstructionInfo *,GTRegisterPressureInstructionInfo *,0>(*(a3 + 4), *(a3 + 5), v21);
      std::vector<GTRegisterPressureInstructionInfo>::__base_destruct_at_end[abi:nn200100](v5 + 40, v32);
    }

    else
    {
      std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,GTRegisterPressureInstructionInfo *,GTRegisterPressureInstructionInfo *,GTRegisterPressureInstructionInfo *,0>(*(a3 + 4), v24 + v31, v21);
      std::vector<GTRegisterPressureInstructionInfo>::__construct_at_end<GTRegisterPressureInstructionInfo*,GTRegisterPressureInstructionInfo*>((v5 + 40), v24 + v31, v23);
    }

    v33 = *(v5 + 64);
    v34 = *(a3 + 7);
    v35 = *(a3 + 8);
    v36 = v35 - v34;
    if (*(v5 + 80) - v33 < (v35 - v34))
    {
      v37 = 0xAAAAAAAAAAAAAAABLL * (v36 >> 3);
      std::vector<std::string>::__vdeallocate((v5 + 64));
      if (v37 <= 0xAAAAAAAAAAAAAAALL)
      {
        v38 = 0x5555555555555556 * ((*(v5 + 80) - *(v5 + 64)) >> 3);
        if (v38 <= v37)
        {
          v38 = v37;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(v5 + 80) - *(v5 + 64)) >> 3) >= 0x555555555555555)
        {
          v39 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v39 = v38;
        }

        std::vector<std::string>::__vallocate[abi:nn200100](v5 + 64, v39);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v40 = *(v5 + 72);
    v41 = v40 - v33;
    if (v40 - v33 >= v36)
    {
      if (v34 != v35)
      {
        do
        {
          std::string::operator=(v33++, v34++);
        }

        while (v34 != v35);
        v40 = *(v5 + 72);
      }

      while (v40 != v33)
      {
        v44 = SHIBYTE(v40[-1].__r_.__value_.__r.__words[2]);
        --v40;
        if (v44 < 0)
        {
          operator delete(v40->__r_.__value_.__l.__data_);
        }
      }

      *(v5 + 72) = v33;
    }

    else
    {
      if (v40 != v33)
      {
        v42 = v40 - v33;
        v43 = *(a3 + 7);
        do
        {
          std::string::operator=(v33++, v43++);
          v42 -= 24;
        }

        while (v42);
        v40 = *(v5 + 72);
      }

      *(v5 + 72) = std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>((v34 + v41), v35, v40);
    }

    v45 = *(v5 + 88);
    v46 = *(a3 + 10);
    v47 = *(a3 + 11);
    v48 = v47 - v46;
    v49 = *(v5 + 104);
    if (v49 - v45 < (v47 - v46))
    {
      v50 = 0x8E38E38E38E38E39 * (v48 >> 2);
      if (v45)
      {
        *(v5 + 96) = v45;
        operator delete(v45);
        v49 = 0;
        *(v5 + 88) = 0;
        *(v5 + 96) = 0;
        *(v5 + 104) = 0;
      }

      if (v50 <= 0x71C71C71C71C71CLL)
      {
        v51 = 0x8E38E38E38E38E39 * (v49 >> 2);
        v52 = 2 * v51;
        if (2 * v51 <= v50)
        {
          v52 = 0x8E38E38E38E38E39 * (v48 >> 2);
        }

        if (v51 >= 0x38E38E38E38E38ELL)
        {
          v53 = 0x71C71C71C71C71CLL;
        }

        else
        {
          v53 = v52;
        }

        if (v53 <= 0x71C71C71C71C71CLL)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerShaderInstructionInfo>>(v53);
        }
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v54 = *(v5 + 96);
    v55 = v54 - v45;
    if (v54 - v45 >= v48)
    {
      if (v47 != v46)
      {
        memmove(*(v5 + 88), *(a3 + 10), v47 - v46);
      }

      *(v5 + 96) = &v45[v48];
    }

    else
    {
      v56 = &v46[v55];
      if (v54 != v45)
      {
        memmove(*(v5 + 88), *(a3 + 10), v55);
        v54 = *(v5 + 96);
      }

      if (v47 != v56)
      {
        memmove(v54, v56, v47 - v56);
      }

      *(v5 + 96) = &v54[v47 - v56];
    }

    v57 = *(v5 + 112);
    v58 = *(a3 + 13);
    v59 = *(a3 + 14);
    v60 = v59 - v58;
    v61 = *(v5 + 128);
    if (v61 - v57 < (v59 - v58))
    {
      v62 = v60 >> 5;
      if (v57)
      {
        *(v5 + 120) = v57;
        operator delete(v57);
        v61 = 0;
        *(v5 + 112) = 0;
        *(v5 + 120) = 0;
        *(v5 + 128) = 0;
      }

      if (!(v62 >> 59))
      {
        v63 = v61 >> 4;
        if (v61 >> 4 <= v62)
        {
          v63 = v60 >> 5;
        }

        if (v61 >= 0x7FFFFFFFFFFFFFE0)
        {
          v64 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v63;
        }

        if (!(v64 >> 59))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerShaderTargetClause>>(v64);
        }
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v65 = *(v5 + 120);
    v66 = v65 - v57;
    if (v65 - v57 >= v60)
    {
      if (v59 != v58)
      {
        memmove(v57, v58, v59 - v58);
      }

      v68 = &v57[v60];
    }

    else
    {
      v67 = &v58[v66];
      if (v65 != v57)
      {
        memmove(*(v5 + 112), *(a3 + 13), v66);
        v65 = *(v5 + 120);
      }

      if (v59 != v67)
      {
        memmove(v65, v67, v59 - v67);
      }

      v68 = &v65[v59 - v67];
    }

    *(v5 + 120) = v68;
    v69 = *(v5 + 136);
    v70 = *(a3 + 16);
    v71 = *(a3 + 17);
    v72 = v71 - v70;
    v73 = *(v5 + 152);
    if (v73 - v69 < (v71 - v70))
    {
      v74 = v72 >> 3;
      if (v69)
      {
        *(v5 + 144) = v69;
        operator delete(v69);
        v73 = 0;
        *(v5 + 136) = 0;
        *(v5 + 144) = 0;
        *(v5 + 152) = 0;
      }

      if (!(v74 >> 61))
      {
        v75 = v73 >> 2;
        if (v73 >> 2 <= v74)
        {
          v75 = v72 >> 3;
        }

        if (v73 >= 0x7FFFFFFFFFFFFFF8)
        {
          v76 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v76 = v75;
        }

        if (!(v76 >> 61))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v76);
        }
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v77 = *(v5 + 144);
    v78 = v77 - v69;
    if (v77 - v69 >= v72)
    {
      if (v71 != v70)
      {
        memmove(v69, v70, v71 - v70);
      }

      v80 = &v69[v72];
    }

    else
    {
      v79 = &v70[v78];
      if (v77 != v69)
      {
        memmove(*(v5 + 136), *(a3 + 16), v78);
        v77 = *(v5 + 144);
      }

      if (v71 != v79)
      {
        memmove(v77, v79, v71 - v79);
      }

      v80 = &v77[v71 - v79];
    }

    *(v5 + 144) = v80;
    v81 = *(v5 + 160);
    v82 = *(a3 + 19);
    v83 = *(a3 + 20);
    v84 = v83 - v82;
    v85 = *(v5 + 176);
    if (v85 - v81 < (v83 - v82))
    {
      v86 = v84 >> 4;
      if (v81)
      {
        *(v5 + 168) = v81;
        operator delete(v81);
        v85 = 0;
        *(v5 + 160) = 0;
        *(v5 + 168) = 0;
        *(v5 + 176) = 0;
      }

      if (!(v86 >> 60))
      {
        v87 = v85 >> 3;
        if (v85 >> 3 <= v86)
        {
          v87 = v84 >> 4;
        }

        if (v85 >= 0x7FFFFFFFFFFFFFF0)
        {
          v88 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v88 = v87;
        }

        if (!(v88 >> 60))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v88);
        }
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v89 = *(v5 + 168);
    v90 = v89 - v81;
    if (v89 - v81 >= v84)
    {
      if (v83 != v82)
      {
        memmove(v81, v82, v83 - v82);
      }

      v92 = &v81[v84];
    }

    else
    {
      v91 = &v82[v90];
      if (v89 != v81)
      {
        memmove(*(v5 + 160), *(a3 + 19), v90);
        v89 = *(v5 + 168);
      }

      if (v83 != v91)
      {
        memmove(v89, v91, v83 - v91);
      }

      v92 = &v89[v83 - v91];
    }

    *(v5 + 168) = v92;
    v93 = *(v5 + 184);
    v94 = *(a3 + 22);
    v95 = *(a3 + 23);
    v96 = v95 - v94;
    v97 = *(v5 + 200);
    if (v97 - v93 < (v95 - v94))
    {
      v98 = 0x6DB6DB6DB6DB6DB7 * (v96 >> 2);
      if (v93)
      {
        *(v5 + 192) = v93;
        operator delete(v93);
        v97 = 0;
        *(v5 + 184) = 0;
        *(v5 + 192) = 0;
        *(v5 + 200) = 0;
      }

      if (v98 <= 0x924924924924924)
      {
        v99 = 0x6DB6DB6DB6DB6DB7 * (v97 >> 2);
        v100 = 2 * v99;
        if (2 * v99 <= v98)
        {
          v100 = 0x6DB6DB6DB6DB6DB7 * (v96 >> 2);
        }

        if (v99 >= 0x492492492492492)
        {
          v101 = 0x924924924924924;
        }

        else
        {
          v101 = v100;
        }

        if (v101 <= 0x924924924924924)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<GTShaderProfilerDebugBinaryRange>>(v101);
        }
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v102 = *(v5 + 192);
    v103 = v102 - v93;
    if (v102 - v93 >= v96)
    {
      if (v95 != v94)
      {
        memmove(v93, v94, v95 - v94);
      }

      v105 = &v93[v96];
    }

    else
    {
      v104 = &v94[v103];
      if (v102 != v93)
      {
        memmove(*(v5 + 184), *(a3 + 22), v103);
        v102 = *(v5 + 192);
      }

      if (v95 != v104)
      {
        memmove(v102, v104, v95 - v104);
      }

      v105 = &v102[v95 - v104];
    }

    *(v5 + 192) = v105;
    v106 = *(v5 + 208);
    v107 = *(a3 + 25);
    v108 = *(a3 + 26);
    v109 = v108 - v107;
    v110 = *(v5 + 224);
    if (v110 - v106 < (v108 - v107))
    {
      v111 = v109 >> 3;
      if (v106)
      {
        *(v5 + 216) = v106;
        operator delete(v106);
        v110 = 0;
        *(v5 + 208) = 0;
        *(v5 + 216) = 0;
        *(v5 + 224) = 0;
      }

      if (!(v111 >> 61))
      {
        v112 = v110 >> 2;
        if (v110 >> 2 <= v111)
        {
          v112 = v109 >> 3;
        }

        if (v110 >= 0x7FFFFFFFFFFFFFF8)
        {
          v113 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v113 = v112;
        }

        if (!(v113 >> 61))
        {
          operator new();
        }
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v114 = *(v5 + 216);
    v115 = v114 - v106;
    if (v114 - v106 >= v109)
    {
      if (v108 != v107)
      {
        memmove(v106, v107, v108 - v107);
      }

      v117 = &v106[v109];
    }

    else
    {
      v116 = &v107[v115];
      if (v114 != v106)
      {
        memmove(*(v5 + 208), v107, v115);
        v114 = *(v5 + 216);
      }

      if (v108 != v116)
      {
        memmove(v114, v116, v108 - v116);
      }

      v117 = &v114[v108 - v116];
    }

    *(v5 + 216) = v117;
  }

  *(v5 + 232) = v6;

  return v5;
}

@end