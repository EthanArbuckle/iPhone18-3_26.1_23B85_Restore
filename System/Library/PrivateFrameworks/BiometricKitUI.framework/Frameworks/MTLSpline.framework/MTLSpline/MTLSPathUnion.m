@interface MTLSPathUnion
- (MTLSPathUnion)initWithPaths:(id)a3;
@end

@implementation MTLSPathUnion

- (MTLSPathUnion)initWithPaths:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v30.receiver = self;
  v30.super_class = MTLSPathUnion;
  v4 = [(MTLSPath *)&v30 init];
  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v20;
    v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v5)
    {
      v6 = 0;
      v22 = *v27;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = 0;
          v9 = *(*(&v26 + 1) + 8 * i);
          while ([v9 instanceCount] > v8)
          {
            v10 = [v9 copy];
            v11 = [v9 instances];
            [v10 collapseTransform:{*(v11 + 80 * v8), *(v11 + 80 * v8 + 16), *(v11 + 80 * v8 + 32), *(v11 + 80 * v8 + 48)}];
            [v10 clearInstances];
            -[MTLSPath appendControlPoints:count:](v4, "appendControlPoints:count:", [v10 controlPoints], objc_msgSend(v10, "controlPointsCount"));
            v12 = [v10 indices];
            v13 = [v10 indices];
            v14 = [v10 indicesCount];
            __p = 0;
            v24 = 0;
            v25 = 0;
            std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&__p, v12, v13 + 2 * v14, (v13 + 2 * v14 - v12) >> 1);
            v15 = __p;
            if (v24 != __p)
            {
              v16 = (v24 - __p) >> 1;
              if (v16 <= 1)
              {
                v16 = 1;
              }

              v17 = __p;
              do
              {
                *v17++ += v6;
                --v16;
              }

              while (v16);
            }

            -[MTLSPath appendIndices:count:](v4, "appendIndices:count:", v15, [v10 indicesCount]);
            v6 = [(MTLSPath *)v4 indicesCount];
            -[MTLSPath appendPatchInfo:count:](v4, "appendPatchInfo:count:", [v10 patchInfo], objc_msgSend(v10, "patchInfoCount"));
            if (__p)
            {
              v24 = __p;
              operator delete(__p);
            }

            ++v8;
          }
        }

        v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v5);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v4;
}

@end