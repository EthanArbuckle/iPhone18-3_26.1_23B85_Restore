@interface NoiseSampler
- (NoiseSampler)initWithUnigram:(float *)unigram ofSize:(unint64_t)size;
- (NoiseSampler)initWithZipfOfSize:(unint64_t)size;
- (id).cxx_construct;
- (unint64_t)drawNoise;
@end

@implementation NoiseSampler

- (NoiseSampler)initWithZipfOfSize:(unint64_t)size
{
  sizeCopy = size;
  std::vector<float>::vector[abi:ne200100](&__p, size);
  v5 = __p;
  if (sizeCopy)
  {
    v6 = log((sizeCopy + 1));
    v7 = 0;
    v8 = 0.0;
    do
    {
      v9 = logf(v7 + 2.0);
      v10 = (v9 - logf(v7 + 1.0)) / v6;
      v8 = v8 + v10;
      v5[v7++] = v10;
    }

    while (sizeCopy != v7);
    v11 = v5;
    do
    {
      *v11 = *v11 / v8;
      ++v11;
      --sizeCopy;
    }

    while (sizeCopy);
  }

  v12 = [(NoiseSampler *)self initWithUnigram:v5 ofSize:(v15 - v5) >> 2];
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  return v12;
}

- (NoiseSampler)initWithUnigram:(float *)unigram ofSize:(unint64_t)size
{
  v35.receiver = self;
  v35.super_class = NoiseSampler;
  v6 = [(NoiseSampler *)&v35 init];
  if (!v6)
  {
    return v6;
  }

  std::random_device::random_device[abi:ne200100](v31);
  v7 = arc4random();
  LODWORD(__src[0]) = v7;
  for (i = 1; i != 624; ++i)
  {
    v7 = i + 1812433253 * (v7 ^ (v7 >> 30));
    *(__src + i) = v7;
  }

  __src[312] = 0;
  memcpy(&v6->_generator, __src, sizeof(v6->_generator));
  std::random_device::~random_device(v31);
  LODWORD(__src[0]) = 0;
  std::vector<float>::resize(&v6->_unigram.__begin_, size, __src, v9);
  __src[0] = 0;
  std::vector<unsigned long>::resize(&v6->_alias.__begin_, size, __src);
  memset(__src, 0, 24);
  *&v31[0].__padding_ = 0;
  v32 = 0;
  v33 = 0;
  v30 = 0;
  if (size)
  {
    v10 = 0;
    do
    {
      v11 = unigram[v10] * size;
      v6->_unigram.__begin_[v10] = v11;
      if (v11 >= 1.0)
      {
        v12 = v31;
      }

      else
      {
        v12 = __src;
      }

      std::vector<long long>::push_back[abi:ne200100](v12, &v30);
      v10 = v30 + 1;
      v30 = v10;
    }

    while (v10 < size);
    v13 = __src[0];
    v14 = __src[1];
    if (__src[1] != __src[0])
    {
      for (j = v32; v32 != *&v31[0].__padding_; j = v32)
      {
        v16 = *(v14 - 8);
        v30 = *(j - 1);
        __src[1] = v14 - 8;
        v32 = j - 8;
        v6->_alias.__begin_[v16] = v30;
        begin = v6->_unigram.__begin_;
        v18 = begin[v30] + -1.0 + begin[v16];
        begin[v30] = v18;
        if (v18 >= 1.0)
        {
          v19 = v31;
        }

        else
        {
          v19 = __src;
        }

        std::vector<long long>::push_back[abi:ne200100](v19, &v30);
        v13 = __src[0];
        v14 = __src[1];
        if (__src[1] == __src[0])
        {
          break;
        }
      }

      v20 = v14 - v13;
      if (v14 != v13)
      {
        v21 = 0;
        v22 = v20 >> 3;
        v23 = v6->_unigram.__begin_;
        if (v22 <= 1)
        {
          v22 = 1;
        }

        do
        {
          v23[v13[v21++]] = 1.0;
        }

        while (v22 != v21);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v24 = *&v31[0].__padding_;
  if (v32 == *&v31[0].__padding_)
  {
    if (!*&v31[0].__padding_)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v25 = &v32[-*&v31[0].__padding_] >> 3;
    v26 = v6->_unigram.__begin_;
    if (v25 <= 1)
    {
      v25 = 1;
    }

    v27 = *&v31[0].__padding_;
    do
    {
      v28 = *v27++;
      v26[v28] = 1.0;
      --v25;
    }

    while (v25);
  }

  v32 = v24;
  operator delete(v24);
  v13 = __src[0];
LABEL_31:
  if (v13)
  {
    __src[1] = v13;
    operator delete(v13);
  }

  return v6;
}

- (unint64_t)drawNoise
{
  v3 = self->_unigram.__end_ - self->_unigram.__begin_;
  v10[0] = 0;
  v10[1] = v3;
  v4 = std::uniform_int_distribution<unsigned long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v10, &self->_generator, v10);
  v5 = self->_alias.__begin_[v4];
  v6 = self->_unigram.__begin_[v4];
  v7 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&self->_generator);
  if ((v7 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&self->_generator) * 4294967300.0) * 5.42101086e-20 >= v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  v2 = 5489;
  *(self + 14) = 5489;
  v3 = 1;
  for (i = 15; i != 638; ++i)
  {
    v5 = 1812433253 * (v2 ^ (v2 >> 30));
    v2 = v5 + v3;
    *(self + i) = i + v5 - 14;
    ++v3;
  }

  *(self + 319) = 0;
  return self;
}

@end