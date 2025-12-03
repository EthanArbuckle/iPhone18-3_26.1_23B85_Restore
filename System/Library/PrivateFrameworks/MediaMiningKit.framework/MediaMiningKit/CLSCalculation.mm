@interface CLSCalculation
+ (void)calculateStandardDeviationForItems:(id)items valueBlock:(id)block result:(id)result;
@end

@implementation CLSCalculation

+ (void)calculateStandardDeviationForItems:(id)items valueBlock:(id)block result:(id)result
{
  v28 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  blockCopy = block;
  resultCopy = result;
  v10 = [itemsCopy count];
  if (v10)
  {
    v11 = v10;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = itemsCopy;
    v12 = itemsCopy;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      v16 = 0.0;
      v17 = 0.0;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = blockCopy[2](blockCopy, v19);
          v17 = v17 + v21;
          v16 = v16 + v21 * v21;
          objc_autoreleasePoolPop(v20);
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    else
    {
      v16 = 0.0;
      v17 = 0.0;
    }

    resultCopy[2](resultCopy, sqrt((v11 * v16 - v17 * v17) / (v11 * v11)), v17 / v11);
    itemsCopy = v22;
  }

  else
  {
    resultCopy[2](resultCopy, 0.0, 0.0);
  }
}

@end