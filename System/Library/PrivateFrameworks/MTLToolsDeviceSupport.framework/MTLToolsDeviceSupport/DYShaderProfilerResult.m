@interface DYShaderProfilerResult
- (DYShaderProfilerResult)init;
- (DYShaderProfilerTiming)computeTiming;
- (DYShaderProfilerTiming)fragmentTiming;
- (DYShaderProfilerTiming)timing;
- (DYShaderProfilerTiming)vertexTiming;
- (id).cxx_construct;
- (void)buildDrawCallIndexMap;
- (void)setComputeTiming:(DYShaderProfilerTiming *)a3;
- (void)setFragmentTiming:(DYShaderProfilerTiming *)a3;
- (void)setTiming:(DYShaderProfilerTiming *)a3;
- (void)setVertexTiming:(DYShaderProfilerTiming *)a3;
@end

@implementation DYShaderProfilerResult

- (DYShaderProfilerResult)init
{
  v15.receiver = self;
  v15.super_class = DYShaderProfilerResult;
  v2 = [(DYShaderProfilerResult *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    drawCallInfoList = v2->_drawCallInfoList;
    v2->_drawCallInfoList = v3;

    v5 = objc_opt_new();
    programPipelineInfoList = v2->_programPipelineInfoList;
    v2->_programPipelineInfoList = v5;

    v7 = objc_opt_new();
    encoderInfoList = v2->_encoderInfoList;
    v2->_encoderInfoList = v7;

    v9 = objc_opt_new();
    encoderFunctionIndexToEncoderIndexMap = v2->_encoderFunctionIndexToEncoderIndexMap;
    v2->_encoderFunctionIndexToEncoderIndexMap = v9;

    v11 = objc_opt_new();
    programInfoList = v2->_programInfoList;
    v2->_programInfoList = v11;

    v13 = v2;
  }

  return v2;
}

- (void)buildDrawCallIndexMap
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::clear(&self->_functionIndexToDrawCallIndexMap);
  drawCallInfoList = self->_drawCallInfoList;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__DYShaderProfilerResult_buildDrawCallIndexMap__block_invoke;
  v4[3] = &unk_27984EAC0;
  v4[4] = self;
  [(NSMutableArray *)drawCallInfoList enumerateObjectsUsingBlock:v4];
}

void __47__DYShaderProfilerResult_buildDrawCallIndexMap__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v9 = [v5 functionIndex];
  v10 = &v9;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unordered_map<int,unsigned int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v6 + 312), &v9);
  v8 = [v5 subCommandIndex];
  v10 = &v8;
  *(std::__hash_table<std::__hash_value_type<int,unsigned int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v7 + 3, &v8) + 5) = a3;
}

- (DYShaderProfilerTiming)vertexTiming
{
  v3 = *&self->_time.average;
  *&retstr->_cycle.average = *&self->_cycle.min;
  *&retstr->_cycle.max = v3;
  *&retstr->_time.min = *&self->_time.max;
  return self;
}

- (void)setVertexTiming:(DYShaderProfilerTiming *)a3
{
  v3 = *&a3->_cycle.average;
  v4 = *&a3->_cycle.max;
  *&self->_vertexTiming._time.min = *&a3->_time.min;
  *&self->_vertexTiming._cycle.max = v4;
  *&self->_vertexTiming._cycle.average = v3;
}

- (DYShaderProfilerTiming)fragmentTiming
{
  v3 = *&self[1]._time.average;
  *&retstr->_cycle.average = *&self[1]._cycle.min;
  *&retstr->_cycle.max = v3;
  *&retstr->_time.min = *&self[1]._time.max;
  return self;
}

- (void)setFragmentTiming:(DYShaderProfilerTiming *)a3
{
  v3 = *&a3->_cycle.average;
  v4 = *&a3->_cycle.max;
  *&self->_fragmentTiming._time.min = *&a3->_time.min;
  *&self->_fragmentTiming._cycle.max = v4;
  *&self->_fragmentTiming._cycle.average = v3;
}

- (DYShaderProfilerTiming)computeTiming
{
  v3 = *&self[2]._time.average;
  *&retstr->_cycle.average = *&self[2]._cycle.min;
  *&retstr->_cycle.max = v3;
  *&retstr->_time.min = *&self[2]._time.max;
  return self;
}

- (void)setComputeTiming:(DYShaderProfilerTiming *)a3
{
  v3 = *&a3->_cycle.average;
  v4 = *&a3->_cycle.max;
  *&self->_computeTiming._time.min = *&a3->_time.min;
  *&self->_computeTiming._cycle.max = v4;
  *&self->_computeTiming._cycle.average = v3;
}

- (DYShaderProfilerTiming)timing
{
  v3 = *&self[3]._time.average;
  *&retstr->_cycle.average = *&self[3]._cycle.min;
  *&retstr->_cycle.max = v3;
  *&retstr->_time.min = *&self[3]._time.max;
  return self;
}

- (void)setTiming:(DYShaderProfilerTiming *)a3
{
  v3 = *&a3->_cycle.average;
  v4 = *&a3->_cycle.max;
  *&self->_timing._time.min = *&a3->_time.min;
  *&self->_timing._cycle.max = v4;
  *&self->_timing._cycle.average = v3;
}

- (id).cxx_construct
{
  *(self + 216) = 0u;
  *(self + 200) = 0u;
  *(self + 184) = 0u;
  *(self + 168) = 0u;
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 58) = 1065353216;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 76) = 1065353216;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 86) = 1065353216;
  return self;
}

@end