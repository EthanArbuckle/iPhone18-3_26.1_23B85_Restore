@interface DYDataFunctionStream
- (BOOL)resetToFunction:(const Function *)function;
- (DYDataFunctionStream)init;
- (DYDataFunctionStream)initWithData:(id)data header:(const void *)header error:(id *)error;
- (const)peekFunction;
- (const)readFunction;
- (id).cxx_construct;
- (unint64_t)readFunctions:(Function *)functions maxCount:(unint64_t)count;
- (void)clearResetMarker;
- (void)dealloc;
- (void)reset;
- (void)setResetMarker;
@end

@implementation DYDataFunctionStream

- (DYDataFunctionStream)init
{
  [(DYDataFunctionStream *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (DYDataFunctionStream)initWithData:(id)data header:(const void *)header error:(id *)error
{
  v8.receiver = self;
  v8.super_class = DYDataFunctionStream;
  v6 = [(DYDataFunctionStream *)&v8 init];
  if (v6)
  {
    *(v6 + 1) = data;
    GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::Create();
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYDataFunctionStream;
  [(DYDataFunctionStream *)&v3 dealloc];
}

- (void)reset
{
  *(self + 71) = *(self + 143);
  *(self + 36) = *(self + 72);
  *(self + 74) = *(self + 146);
  *(self + 600) = *(self + 1176);
}

- (void)setResetMarker
{
  *(self + 143) = *(self + 71);
  *(self + 72) = *(self + 36);
  *(self + 146) = *(self + 74);
  *(self + 1176) = *(self + 600);
}

- (void)clearResetMarker
{
  GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_Iterator(v3, *(self + 2), *(*(self + 2) + 16));
  *(self + 143) = v3[67];
  *(self + 72) = v4;
  *(self + 146) = v5;
  *(self + 1176) = v6;
  GPUTools::FD::Function::~Function(v3);
}

- (BOOL)resetToFunction:(const Function *)function
{
  v4 = *(self + 2);
  v5 = *(function + 55);
  if (v5 < *(v4 + 24) && v5 >= *(v4 + 16))
  {
    v7 = *(function + 55);
  }

  else
  {
    v7 = *(v4 + 24);
  }

  GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_Iterator(v10, v4, v7);
  *(self + 71) = v11;
  *(self + 36) = v12;
  *(self + 74) = v13;
  *(self + 600) = v14;
  GPUTools::FD::Function::~Function(v10);
  GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_Iterator(v10, *(self + 2), *(*(self + 2) + 24));
  v8 = *(self + 71) != v11;
  GPUTools::FD::Function::~Function(v10);
  return v8;
}

- (unint64_t)readFunctions:(Function *)functions maxCount:(unint64_t)count
{
  GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_Iterator(v11, *(self + 2), *(*(self + 2) + 24));
  countCopy = 0;
  if (count)
  {
    v8 = self + 32;
    while (1)
    {
      v9 = *(v8 + 67);
      if (v9 == v11[67])
      {
        break;
      }

      if (*v8 == -1 || *(v8 + 68) == v9)
      {
        GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode(v8);
      }

      GPUTools::FD::Function::operator=();
      GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::operator++(v8);
      ++countCopy;
      functions = (functions + 536);
      if (count == countCopy)
      {
        countCopy = count;
        break;
      }
    }
  }

  GPUTools::FD::Function::~Function(v11);
  return countCopy;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  v3 = GPUTools::FD::Function::Function((self + 32));
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  v4 = GPUTools::FD::Function::Function((self + 608));
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  return self;
}

- (const)peekFunction
{
  v2 = self + 32;
  GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_Iterator(v6, *(self + 2), *(*(self + 2) + 24));
  v3 = *(v2 + 67);
  v4 = v6[67];
  GPUTools::FD::Function::~Function(v6);
  if (v3 == v4)
  {
    return 0;
  }

  if (*v2 == -1 || *(v2 + 68) == *(v2 + 67))
  {
    GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode(v2);
  }

  return v2;
}

- (const)readFunction
{
  v2 = self + 32;
  GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_Iterator(v6, *(self + 2), *(*(self + 2) + 24));
  v3 = *(v2 + 67);
  v4 = v6[67];
  GPUTools::FD::Function::~Function(v6);
  if (v3 == v4)
  {
    return 0;
  }

  if (*v2 == -1 || *(v2 + 68) == *(v2 + 67))
  {
    GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::_decode(v2);
  }

  GPUTools::FD::TFunctionStream<GPUTools::FD::Function,void>::_Iterator<GPUTools::FD::Function>::operator++(v2);
  return v2;
}

@end