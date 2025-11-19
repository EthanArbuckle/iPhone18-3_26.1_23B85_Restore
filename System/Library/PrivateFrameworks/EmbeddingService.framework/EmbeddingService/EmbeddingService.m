double gotLoadHelper_x8__OBJC_CLASS___CDMClient(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CDMFoundation))
  {
    return dlopenHelper_CDMFoundation(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_CDMFoundation(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CDMFoundation.framework/CDMFoundation", 0);
  atomic_store(1u, &dlopenHelperFlag_CDMFoundation);
  return a1;
}