void mlir::RewritePatternSet::add<mlir::mps::RintOp>(llvm::LogicalResult (*)(mlir::mps::RintOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::RoundOp>(llvm::LogicalResult (*)(mlir::mps::RoundOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::RoundOp>(llvm::LogicalResult (*)(mlir::mps::RoundOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SampleGridDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SampleGridDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SampleGridDataGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SampleGridDataGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::SampleGridDataGradientOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::SampleGridDataGradientOpGenericAdaptorBase::Properties]";
  v6 = 123;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::SampleGridDataGradientOp>(llvm::LogicalResult (*)(mlir::mps::SampleGridDataGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SampleGridDataGradientOp>(llvm::LogicalResult (*)(mlir::mps::SampleGridDataGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SampleGridOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SampleGridOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SampleGridOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SampleGridOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 32);
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *a2 = result;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::SampleGridOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::SampleGridOpGenericAdaptorBase::Properties]";
  v6 = 111;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::SampleGridOp>(llvm::LogicalResult (*)(mlir::mps::SampleGridOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SampleGridOp>(llvm::LogicalResult (*)(mlir::mps::SampleGridOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::mps::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::ScatterAlongAxisOpGenericAdaptorBase::Properties]";
  v6 = 117;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::ScatterAlongAxisOp>(llvm::LogicalResult (*)(mlir::mps::ScatterAlongAxisOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::ScatterAlongAxisOp>(llvm::LogicalResult (*)(mlir::mps::ScatterAlongAxisOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ScatterNDOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ScatterNDOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ScatterNDOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ScatterNDOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::ScatterNDOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::ScatterNDOpGenericAdaptorBase::Properties]";
  v6 = 110;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::ScatterNDOp>(llvm::LogicalResult (*)(mlir::mps::ScatterNDOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::ScatterNDOp>(llvm::LogicalResult (*)(mlir::mps::ScatterNDOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::ScatterOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::ScatterOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::mps::detail::ScatterOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::ScatterOpGenericAdaptorBase::Properties]";
  v6 = 108;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::ScatterOp>(llvm::LogicalResult (*)(mlir::mps::ScatterOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::ScatterOp>(llvm::LogicalResult (*)(mlir::mps::ScatterOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SelectOp>(llvm::LogicalResult (*)(mlir::mps::SelectOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SelectOp>(llvm::LogicalResult (*)(mlir::mps::SelectOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::ShapeOp>(llvm::LogicalResult (*)(mlir::mps::ShapeOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::ShapeOp>(llvm::LogicalResult (*)(mlir::mps::ShapeOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SigmoidGradientOp>(llvm::LogicalResult (*)(mlir::mps::SigmoidGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SigmoidGradientOp>(llvm::LogicalResult (*)(mlir::mps::SigmoidGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SigmoidGradientWithSigmoidOp>(llvm::LogicalResult (*)(mlir::mps::SigmoidGradientWithSigmoidOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SigmoidGradientWithSigmoidOp>(llvm::LogicalResult (*)(mlir::mps::SigmoidGradientWithSigmoidOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SigmoidHardOp>(llvm::LogicalResult (*)(mlir::mps::SigmoidHardOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SigmoidHardOp>(llvm::LogicalResult (*)(mlir::mps::SigmoidHardOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SigmoidOp>(llvm::LogicalResult (*)(mlir::mps::SigmoidOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SigmoidOp>(llvm::LogicalResult (*)(mlir::mps::SigmoidOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SignOp>(llvm::LogicalResult (*)(mlir::mps::SignOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SignOp>(llvm::LogicalResult (*)(mlir::mps::SignOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SignbitOp>(llvm::LogicalResult (*)(mlir::mps::SignbitOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SignbitOp>(llvm::LogicalResult (*)(mlir::mps::SignbitOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SinOp>(llvm::LogicalResult (*)(mlir::mps::SinOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SinOp>(llvm::LogicalResult (*)(mlir::mps::SinOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 32) = *(a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::SingleGateRNNGradientOpGenericAdaptorBase::Properties]";
  v6 = 122;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::SingleGateRNNGradientOp>(llvm::LogicalResult (*)(mlir::mps::SingleGateRNNGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SingleGateRNNGradientOp>(llvm::LogicalResult (*)(mlir::mps::SingleGateRNNGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::SingleGateRNNOpGenericAdaptorBase::Properties]";
  v6 = 114;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::SingleGateRNNOp>(llvm::LogicalResult (*)(mlir::mps::SingleGateRNNOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SingleGateRNNOp>(llvm::LogicalResult (*)(mlir::mps::SingleGateRNNOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SinhOp>(llvm::LogicalResult (*)(mlir::mps::SinhOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SinhOp>(llvm::LogicalResult (*)(mlir::mps::SinhOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SizeOp>(llvm::LogicalResult (*)(mlir::mps::SizeOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SizeOp>(llvm::LogicalResult (*)(mlir::mps::SizeOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SliceOp>(llvm::LogicalResult (*)(mlir::mps::SliceOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SliceOp>(llvm::LogicalResult (*)(mlir::mps::SliceOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SoftmaxOp>(llvm::LogicalResult (*)(mlir::mps::SoftmaxOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SoftmaxOp>(llvm::LogicalResult (*)(mlir::mps::SoftmaxOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SoftplusOp>(llvm::LogicalResult (*)(mlir::mps::SoftplusOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SoftplusOp>(llvm::LogicalResult (*)(mlir::mps::SoftplusOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SoftplusParametricOp>(llvm::LogicalResult (*)(mlir::mps::SoftplusParametricOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SoftplusParametricOp>(llvm::LogicalResult (*)(mlir::mps::SoftplusParametricOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SoftsignOp>(llvm::LogicalResult (*)(mlir::mps::SoftsignOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SoftsignOp>(llvm::LogicalResult (*)(mlir::mps::SoftsignOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SortOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SortOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::mps::detail::SortOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::SortOpGenericAdaptorBase::Properties]";
  v6 = 105;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::SortOp>(llvm::LogicalResult (*)(mlir::mps::SortOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SortOp>(llvm::LogicalResult (*)(mlir::mps::SortOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::SpaceToBatchOpGenericAdaptorBase::Properties]";
  v6 = 113;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::SpaceToBatchOp>(llvm::LogicalResult (*)(mlir::mps::SpaceToBatchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SpaceToBatchOp>(llvm::LogicalResult (*)(mlir::mps::SpaceToBatchOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::SpaceToDepth2DOpGenericAdaptorBase::Properties]";
  v6 = 115;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::SpaceToDepth2DOp>(llvm::LogicalResult (*)(mlir::mps::SpaceToDepth2DOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SpaceToDepth2DOp>(llvm::LogicalResult (*)(mlir::mps::SpaceToDepth2DOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::mps::detail::SplitOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::SplitOpGenericAdaptorBase::Properties]";
  v6 = 106;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::SplitOp>(llvm::LogicalResult (*)(mlir::mps::SplitOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SplitOp>(llvm::LogicalResult (*)(mlir::mps::SplitOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SquareOp>(llvm::LogicalResult (*)(mlir::mps::SquareOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SquareOp>(llvm::LogicalResult (*)(mlir::mps::SquareOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SquareRootOp>(llvm::LogicalResult (*)(mlir::mps::SquareRootOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SquareRootOp>(llvm::LogicalResult (*)(mlir::mps::SquareRootOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SqueezeOp>(llvm::LogicalResult (*)(mlir::mps::SqueezeOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SqueezeOp>(llvm::LogicalResult (*)(mlir::mps::SqueezeOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  v5 = *(a3 + 48);
  *(a2 + 32) = *(a3 + 32);
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::StencilOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::StencilOpGenericAdaptorBase::Properties]";
  v6 = 108;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::StencilOp>(llvm::LogicalResult (*)(mlir::mps::StencilOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::StencilOp>(llvm::LogicalResult (*)(mlir::mps::StencilOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::StridedSliceGradientOpGenericAdaptorBase::Properties]";
  v6 = 121;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::StridedSliceGradientOp>(llvm::LogicalResult (*)(mlir::mps::StridedSliceGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::StridedSliceGradientOp>(llvm::LogicalResult (*)(mlir::mps::StridedSliceGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::StridedSliceOpGenericAdaptorBase::Properties]";
  v6 = 113;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::StridedSliceOp>(llvm::LogicalResult (*)(mlir::mps::StridedSliceOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::StridedSliceOp>(llvm::LogicalResult (*)(mlir::mps::StridedSliceOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

__n128 llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *a2 = *a3;
  a2[1] = v4;
  return result;
}

const char *llvm::getTypeName<mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::StridedSliceUpdateOpGenericAdaptorBase::Properties]";
  v6 = 119;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::StridedSliceUpdateOp>(llvm::LogicalResult (*)(mlir::mps::StridedSliceUpdateOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::StridedSliceUpdateOp>(llvm::LogicalResult (*)(mlir::mps::StridedSliceUpdateOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SubtractOp>(llvm::LogicalResult (*)(mlir::mps::SubtractOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SubtractOp>(llvm::LogicalResult (*)(mlir::mps::SubtractOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::SwishOp>(llvm::LogicalResult (*)(mlir::mps::SwishOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::SwishOp>(llvm::LogicalResult (*)(mlir::mps::SwishOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::TanOp>(llvm::LogicalResult (*)(mlir::mps::TanOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::TanOp>(llvm::LogicalResult (*)(mlir::mps::TanOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::TanhOp>(llvm::LogicalResult (*)(mlir::mps::TanhOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::TanhOp>(llvm::LogicalResult (*)(mlir::mps::TanhOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::TileGradientOp>(llvm::LogicalResult (*)(mlir::mps::TileGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::TileGradientOp>(llvm::LogicalResult (*)(mlir::mps::TileGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::TileOp>(llvm::LogicalResult (*)(mlir::mps::TileOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::TileOp>(llvm::LogicalResult (*)(mlir::mps::TileOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::TopKGradientOpGenericAdaptorBase::Properties]";
  v6 = 113;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::TopKGradientOp>(llvm::LogicalResult (*)(mlir::mps::TopKGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::TopKGradientOp>(llvm::LogicalResult (*)(mlir::mps::TopKGradientOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::mps::detail::TopKOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::TopKOpGenericAdaptorBase::Properties]";
  v6 = 105;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::TopKOp>(llvm::LogicalResult (*)(mlir::mps::TopKOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::TopKOp>(llvm::LogicalResult (*)(mlir::mps::TopKOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::TransposeOp>(llvm::LogicalResult (*)(mlir::mps::TransposeOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::TransposeOp>(llvm::LogicalResult (*)(mlir::mps::TransposeOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::TruncateOp>(llvm::LogicalResult (*)(mlir::mps::TruncateOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::TruncateOp>(llvm::LogicalResult (*)(mlir::mps::TruncateOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    JUMPOUT(0x259C63180);
  }
}

const char *llvm::getTypeName<mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::detail::TypeConstraintOpGenericAdaptorBase::Properties]";
  v6 = 115;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void *mlir::RewritePatternSet::add<mlir::mps::TypeConstraintOp>(llvm::LogicalResult (*)(mlir::mps::TypeConstraintOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::TypeConstraintOp>(llvm::LogicalResult (*)(mlir::mps::TypeConstraintOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::UnrealizedFoldOp>(llvm::LogicalResult (*)(mlir::mps::UnrealizedFoldOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::UnrealizedFoldOp>(llvm::LogicalResult (*)(mlir::mps::UnrealizedFoldOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::UpdateRandomStateOp>(llvm::LogicalResult (*)(mlir::mps::UpdateRandomStateOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::UpdateRandomStateOp>(llvm::LogicalResult (*)(mlir::mps::UpdateRandomStateOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::VariableFromTensorOp>(llvm::LogicalResult (*)(mlir::mps::VariableFromTensorOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::VariableFromTensorOp>(llvm::LogicalResult (*)(mlir::mps::VariableFromTensorOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::XnorOp>(llvm::LogicalResult (*)(mlir::mps::XnorOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::XnorOp>(llvm::LogicalResult (*)(mlir::mps::XnorOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

void *mlir::RewritePatternSet::add<mlir::mps::XorOp>(llvm::LogicalResult (*)(mlir::mps::XorOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::RewritePatternSet::add<mlir::mps::XorOp>(llvm::LogicalResult (*)(mlir::mps::XorOp,mlir::PatternRewriter &),mlir::PatternBenefit,llvm::ArrayRef<llvm::StringRef>)::FnPattern::~FnPattern(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  JUMPOUT(0x259C63180);
}

__n128 OUTLINED_FUNCTION_1_4()
{
  *v0 = *(v1 + 56);
  *(v0 + 8) = *(v1 + 48);
  *(v0 + 16) = 1;
  v2 = v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1);
  v3 = *(v2 + 48);
  v5 = *(v2 + 16);
  result = *(v2 + 32);
  *(v0 + 24) = *v2;
  *(v0 + 40) = v5;
  *(v0 + 56) = result;
  *(v0 + 72) = v3;
  return result;
}

__n128 OUTLINED_FUNCTION_2_6()
{
  *v0 = *(v1 + 56);
  *(v0 + 8) = *(v1 + 48);
  *(v0 + 16) = 1;
  result = *(v1 + 64 + 16 * ((*(v1 + 44) >> 23) & 1));
  *(v0 + 24) = result;
  return result;
}

void OUTLINED_FUNCTION_3_5()
{
  *v0 = *(v1 + 56);
  *(v0 + 8) = *(v1 + 48);
  *(v0 + 16) = 1;
}

__n128 OUTLINED_FUNCTION_11_4()
{
  v3 = *(v0 + 16);
  result = *(v0 + 32);
  *(v1 + 24) = *v0;
  *(v1 + 40) = v3;
  *(v1 + 56) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_12_4()
{
  v2 = *(v0 + 32);
  result = *(v0 + 16);
  *(v1 + 24) = *v0;
  *(v1 + 40) = result;
  *(v1 + 56) = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_13_3()
{
  v2 = v0[1].n128_u64[0];
  result = *v0;
  *(v1 + 24) = *v0;
  *(v1 + 40) = v2;
  return result;
}

__n128 OUTLINED_FUNCTION_17_1()
{
  result = *(v0 + 16);
  *(v1 + 24) = *v0;
  *(v1 + 40) = result;
  return result;
}

void *OUTLINED_FUNCTION_22_4(uint64_t a1)
{
  v3 = (*(*(*(a1 + 72) + 32 * v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);

  return llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v3);
}

void *OUTLINED_FUNCTION_23_3@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(*(a1 + 72) + 32 * v1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);

  return llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v3);
}

void *OUTLINED_FUNCTION_54_4@<X0>(uint64_t a1@<X8>)
{
  v2 = (*(*(a1 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);

  return llvm::DefaultDoCastIfPossible<mlir::ShapedType,mlir::Type const,llvm::CastInfo<mlir::ShapedType,mlir::Type const,void>>::doCastIfPossible(v2);
}

BOOL OUTLINED_FUNCTION_180(mlir::mps::_anonymous_namespace_ *a1)
{
}

uint64_t OUTLINED_FUNCTION_181@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(v5 - 16) = a2;
  *(v5 - 8) = a1;
  result = a5;
  *(v5 - 32) = a4;
  *(v5 - 24) = a3;
  return result;
}

double OUTLINED_FUNCTION_197(uint32x4_t a1, uint8x8_t a2)
{
  a2.i32[0] = *v2;
  *&result = vaddw_u16(a1, *&vmovl_u8(a2)).u64[0];
  return result;
}

void OUTLINED_FUNCTION_198()
{

  llvm::SmallVectorBase<unsigned int>::grow_pod();
}

uint64_t mlir::mps::MPSBytecodeDialectInterface::writeAttribute(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = *(a2->n128_u64[0] + 136);
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    (*(*a3 + 48))(a3, 0);
    v12 = a2;
    Type = mlir::mps::MPSBufferTensorAttr::getType(&v12);
    (*(*a3 + 32))(a3, Type);
    Handle = mlir::mps::MPSBufferTensorAttr::getHandle(&v12, &v11);
    (*(*a3 + 40))(a3, &v11, Handle);
    HandleOffset = mlir::mps::MPSBufferTensorAttr::getHandleOffset(&v12);
  }

  else
  {
    if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 1);
      Value = mlir::mps::CropResizeAlignmentModeAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 2);
      Value = mlir::mps::CropResizeCoordinateModeAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 3);
      Value = mlir::mps::DeviceHintAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 4);
      Value = mlir::mps::FFTScalingModeAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 5);
      Value = mlir::mps::GRUGateLayoutAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 6);
      Value = mlir::mps::LSTMGateLayoutAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 7);
      Value = mlir::mps::MetalPixelFormatAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 8);
      Value = mlir::mps::NearestRoundingModeAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 9);
      Value = mlir::mps::PaddingModeAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 10);
      Value = mlir::mps::PaddingStyleAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 11);
      Value = mlir::mps::PoolIndicesModeAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 12);
      Value = mlir::mps::PruningMetricAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 13);
      Value = mlir::mps::PruningStructureAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 14);
      Value = mlir::mps::RNNActivationAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 15);
      Value = mlir::mps::NormalSamplingMethodAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 16);
      Value = mlir::mps::ReductionModeAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 17);
      Value = mlir::mps::SamplingModeAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 18);
      Value = mlir::mps::ScatterModeAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 19);
      Value = mlir::mps::SimilarityTypeAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 20);
      Value = mlir::mps::SparseTensorStorageAttr::getValue(&v11);
    }

    else if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
    {
      v11.n128_u64[0] = a2;
      (*(*a3 + 48))(a3, 21);
      Value = mlir::mps::StencilPaddingModeAttr::getValue(&v11);
    }

    else
    {
      v11.n128_u64[0] = a2;
      if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
      {
        (*(*a3 + 48))(a3, 22);
        Value = mlir::mps::TensorDataLayoutAttr::getValue(&v11);
      }

      else
      {
        (*(*a3 + 48))(a3, 23);
        Value = mlir::mps::CallInlineModeAttr::getValue(&v11);
      }
    }

    HandleOffset = Value;
  }

  (*(*a3 + 48))(a3, HandleOffset);
  return 1;
}

uint64_t mlir::mps::MPSBytecodeDialectInterface::readAttribute(mlir::DialectInterface *a1, uint64_t a2)
{
  Context = mlir::DialectInterface::getContext(a1);
  v12 = 0;
  if (((*(*a2 + 72))(a2, &v12) & 1) == 0)
  {
    return 0;
  }

  switch(v12)
  {
    case 0:
      break;
    case 1:
      break;
    case 2:
      break;
    case 3:
      v13 = 0;
      v7 = (*(*a2 + 72))(a2, &v13);
      result = 0;
      if (v7)
      {
        result = mlir::mps::DeviceHintAttr::get(Context, v13);
      }

      break;
    case 4:
      break;
    case 5:
      break;
    case 6:
      break;
    case 7:
      break;
    case 8:
      v13 = 0;
      v10 = (*(*a2 + 72))(a2, &v13);
      result = 0;
      if (v10)
      {
        result = mlir::mps::NearestRoundingModeAttr::get(Context, v13);
      }

      break;
    case 9:
      break;
    case 10:
      v13 = 0;
      v9 = (*(*a2 + 72))(a2, &v13);
      result = 0;
      if (v9)
      {
        result = mlir::mps::PaddingStyleAttr::get(Context, v13);
      }

      break;
    case 11:
      v13 = 0;
      v5 = (*(*a2 + 72))(a2, &v13);
      result = 0;
      if (v5)
      {
        result = mlir::mps::PoolIndicesModeAttr::get(Context, v13);
      }

      break;
    case 12:
      break;
    case 13:
      v13 = 0;
      v8 = (*(*a2 + 72))(a2, &v13);
      result = 0;
      if (v8)
      {
        result = mlir::mps::PruningStructureAttr::get(Context, v13);
      }

      break;
    case 14:
      break;
    case 15:
      v13 = 0;
      v6 = (*(*a2 + 72))(a2, &v13);
      result = 0;
      if (v6)
      {
        result = mlir::mps::NormalSamplingMethodAttr::get(Context, v13);
      }

      break;
    case 16:
      break;
    case 17:
      break;
    case 18:
      break;
    case 19:
      break;
    case 20:
      break;
    case 21:
      break;
    case 22:
      break;
    case 23:
      v13 = 0;
      v11 = (*(*a2 + 72))(a2, &v13);
      result = 0;
      if (v11)
      {
        result = mlir::mps::CallInlineModeAttr::get(Context, v13);
      }

      break;
    default:
      return 0;
  }

  return result;
}

uint64_t mlir::mps::MPSBytecodeDialectInterface::writeType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a3 + 48))(a3, 1);
  (*(*a3 + 48))(a3, 0);
  return 1;
}

uint64_t mlir::mps::MPSBytecodeDialectInterface::readType(mlir::DialectInterface *a1, uint64_t a2)
{
  Context = mlir::DialectInterface::getContext(a1);
  v8 = 0;
  v4 = (*(*a2 + 72))(a2, &v8);
  result = 0;
  if ((v4 & 1) != 0 && v8 == 1)
  {
    v9 = 0;
    v6 = (*(*a2 + 72))(a2, &v9);
    result = 0;
    if ((v6 & 1) != 0 && !v9)
    {
      TypeUniquer = mlir::MLIRContext::getTypeUniquer(Context);
      return mlir::StorageUniquer::getSingletonImpl(TypeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::NF4Type,void>::id);
    }
  }

  return result;
}

void mlir::mps::MPSBytecodeDialectInterface::~MPSBytecodeDialectInterface(mlir::mps::MPSBytecodeDialectInterface *this)
{
  mlir::DialectInterface::~DialectInterface(this);

  JUMPOUT(0x259C63180);
}

uint64_t mlir::mps::MPSBytecodeDialectInterface::writeVersion(unsigned int *a1, uint64_t a2)
{
  (*(*a2 + 48))(a2, a1[8]);
  (*(*a2 + 48))(a2, a1[9]);
  v4 = a1[10];
  v5 = *(*a2 + 48);

  return v5(a2, v4);
}

uint64_t mlir::mps::MPSBytecodeDialectInterface::readVersion@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v5 = 0;
  if ((*(*a1 + 72))(a1, &v7) & 1) != 0 && ((*(*a1 + 72))(a1, &v6) & 1) != 0 && ((*(*a1 + 72))(a1, &v5))
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t mlir::mps::MPSBytecodeDialectInterface::upgradeFromVersion(uint64_t a1, mlir::Operation *a2, _DWORD *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v35[0] = &unk_28685B550;
  v35[1] = 0x300000001;
  v36 = 4;
  v4 = a3[2];
  if (!v4)
  {
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    v5 = a3[3];
    if (v5 == 3)
    {
      v6 = a3[4];
      if (v6 == 4)
      {
        return 1;
      }

      if (v6 < 5)
      {
LABEL_24:
        v23[0] = "mps";
        v23[1] = 3;
        v7 = 1;
        if (!mlir::detail::upgradeFromVersion(a2, v23, a3))
        {
          v24 = "IR upgrade to version {0} failed";
          v25 = 32;
          v26 = v31;
          v27 = 1;
          v28 = 1;
          v29 = &unk_28685E490;
          v30 = v35;
          v31[0] = &v29;
          v34 = 263;
          v33[0] = &v24;
          mlir::Operation::emitError(v37, a2, v33);
          v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
          if (v37[0])
          {
            mlir::InFlightDiagnostic::report(v37);
          }

          if (v45 == 1)
          {
            if (v44 != &v45)
            {
              free(v44);
            }

            v16 = __p;
            if (__p)
            {
              v17 = v43;
              v18 = __p;
              if (v43 != __p)
              {
                do
                {
                  v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
                }

                while (v17 != v16);
                v18 = __p;
              }

              v43 = v16;
              operator delete(v18);
            }

            v11 = v40;
            if (!v40)
            {
              goto LABEL_43;
            }

            v19 = v41;
            v13 = v40;
            if (v41 == v40)
            {
LABEL_42:
              v41 = v11;
              operator delete(v13);
LABEL_43:
              if (v38 != &v39)
              {
                free(v38);
              }

              return v7;
            }

            do
            {
              v21 = *--v19;
              v20 = v21;
              *v19 = 0;
              if (v21)
              {
                MEMORY[0x259C63150](v20, 0x1000C8077774924);
              }
            }

            while (v19 != v11);
LABEL_41:
            v13 = v40;
            goto LABEL_42;
          }
        }

        return v7;
      }
    }

    else if (v5 <= 3)
    {
      goto LABEL_24;
    }
  }

  v24 = "current mps dialect version is {0}, can't parse version {1}";
  v25 = 59;
  v26 = v32;
  v27 = 2;
  v28 = 1;
  v29 = &unk_28685E490;
  v30 = v35;
  v31[0] = &unk_28685E490;
  v31[1] = a3;
  v32[0] = &v29;
  v32[1] = v31;
  v34 = 263;
  v33[0] = &v24;
  mlir::Operation::emitError(v37, a2, v33);
  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v37);
  if (v37[0])
  {
    mlir::InFlightDiagnostic::report(v37);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v43;
      v10 = __p;
      if (v43 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v43 = v8;
      operator delete(v10);
    }

    v11 = v40;
    if (!v40)
    {
      goto LABEL_43;
    }

    v12 = v41;
    v13 = v40;
    if (v41 == v40)
    {
      goto LABEL_42;
    }

    do
    {
      v15 = *--v12;
      v14 = v15;
      *v12 = 0;
      if (v15)
      {
        MEMORY[0x259C63150](v14, 0x1000C8077774924);
      }
    }

    while (v12 != v11);
    goto LABEL_41;
  }

  return v7;
}

uint64_t mlir::anonymous namespace::readBufferTensorAttributeEncoding(mlir::MLIRContext *a1, uint64_t a2)
{
  v14 = 0;
  v4 = mlir::DialectBytecodeReader::readType<mlir::RankedTensorType>(a2, &v14);
  result = 0;
  if (v4)
  {
    v6 = mlir::DialectBytecodeReader::readResourceHandle<mlir::mps::MPSDialectResourceBlobHandle>(a2, &v11);
    if (v13 == 1)
    {
      v10 = 0;
      v7 = (*(*a2 + 72))(a2, &v10, v6);
      result = 0;
      if (v7)
      {
        v8 = v11;
        v9 = v12;
        return mlir::mps::MPSBufferTensorAttr::get(a1, v14, &v8, v10);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::CropResizeAlignmentModeAttr,mlir::mps::CropResizeAlignmentMode>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::CropResizeAlignmentModeAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::CropResizeCoordinateModeAttr,mlir::mps::CropResizeCoordinateMode>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::CropResizeCoordinateModeAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::FFTScalingModeAttr,mlir::mps::FFTScalingMode>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::FFTScalingModeAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::GRUGateLayoutAttr,mlir::mps::GRUGateLayout>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::GRUGateLayoutAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::LSTMGateLayoutAttr,mlir::mps::LSTMGateLayout>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::LSTMGateLayoutAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::MetalPixelFormatAttr,mlir::mps::MetalPixelFormat>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::MetalPixelFormatAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::PaddingModeAttr,mlir::mps::PaddingMode>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::PaddingModeAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::PruningMetricAttr,mlir::mps::PruningMetric>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::PruningMetricAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::RNNActivationAttr,mlir::mps::RNNActivation>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::RNNActivationAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::ReductionModeAttr,mlir::mps::ReductionMode>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::ReductionModeAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::SamplingModeAttr,mlir::mps::SamplingMode>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::SamplingModeAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::ScatterModeAttr,mlir::mps::ScatterMode>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::ScatterModeAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::SimilarityTypeAttr,mlir::mps::SimilarityType>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::SimilarityTypeAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::SparseTensorStorageAttr,mlir::mps::SparseTensorStorage>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::SparseTensorStorageAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::StencilPaddingModeAttr,mlir::mps::StencilPaddingMode>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::StencilPaddingModeAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::anonymous namespace::readEnumAttrEncoding<mlir::mps::TensorDataLayoutAttr,mlir::mps::TensorDataLayout>(mlir::MLIRContext *a1, uint64_t a2)
{
  v5 = 0;
  v3 = (*(*a2 + 72))(a2, &v5);
  result = 0;
  if (v3)
  {
    return mlir::mps::TensorDataLayoutAttr::get(a1, v5);
  }

  return result;
}

uint64_t mlir::DialectBytecodeReader::readType<mlir::RankedTensorType>(uint64_t a1, uint64_t *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = 0;
  if (((*(*a1 + 64))(a1, &v27) & 1) == 0)
  {
    return 0;
  }

  v4 = v27;
  v5 = *(*v27 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    return 1;
  }

  v26[16] = 257;
  (*(*a1 + 16))(&v31, a1, v26);
  if (v31)
  {
    LODWORD(v28) = 3;
    *(&v28 + 1) = "expected ";
    v29 = 9;
    if (v34 >= v35)
    {
      if (v33 > &v28 || v33 + 24 * v34 <= &v28)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v6 = v33 + 24 * v34;
    v7 = v28;
    *(v6 + 2) = v29;
    *v6 = v7;
    ++v34;
  }

  *&v28 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::RankedTensorType]";
  *(&v28 + 1) = 72;
  v8 = llvm::StringRef::find(&v28, "DesiredTypeName = ", 0x12uLL, 0);
  if (v31)
  {
    if (*(&v28 + 1) >= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(&v28 + 1);
    }

    v10 = 18;
    if (*(&v28 + 1) - v9 < 0x12)
    {
      v10 = *(&v28 + 1) - v9;
    }

    v11 = *(&v28 + 1) - v9 - v10;
    if (v11 >= v11 - 1)
    {
      --v11;
    }

    v30 = 261;
    *&v28 = v28 + v9 + v10;
    *(&v28 + 1) = v11;
    mlir::Diagnostic::operator<<(&v32, &v28);
    if (v31)
    {
      LODWORD(v28) = 3;
      *(&v28 + 1) = ", but got: ";
      v29 = 11;
      if (v34 >= v35)
      {
        if (v33 > &v28 || v33 + 24 * v34 <= &v28)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v12 = v33 + 24 * v34;
      v13 = v28;
      *(v12 + 2) = v29;
      *v12 = v13;
      ++v34;
      if (v31)
      {
        mlir::DiagnosticArgument::DiagnosticArgument(&v28, v27);
        if (v34 >= v35)
        {
          if (v33 > &v28 || v33 + 24 * v34 <= &v28)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v14 = v33 + 24 * v34;
        v15 = v28;
        *(v14 + 2) = v29;
        *v14 = v15;
        ++v34;
      }
    }
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v40;
      v19 = __p;
      if (v40 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v40 = v17;
      operator delete(v19);
    }

    v20 = v37;
    if (v37)
    {
      v21 = v38;
      v22 = v37;
      if (v38 != v37)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            MEMORY[0x259C63150](v23, 0x1000C8077774924);
          }
        }

        while (v21 != v20);
        v22 = v37;
      }

      v38 = v20;
      operator delete(v22);
    }

    if (v33 != &v36)
    {
      free(v33);
    }
  }

  return v16;
}

double mlir::DialectBytecodeReader::readResourceHandle<mlir::mps::MPSDialectResourceBlobHandle>@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  (*(*a1 + 128))(&v19);
  if ((v21 & 1) == 0)
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    return *&v4;
  }

  v5 = *(&v19 + 1);
  {
    if (v5 != mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id)
    {
      goto LABEL_4;
    }

LABEL_33:
    *&v4 = v19;
    *a2 = v19;
    *(a2 + 16) = v20;
    *(a2 + 24) = 1;
    return *&v4;
  }

  mlir::DialectBytecodeReader::readResourceHandle<mlir::mps::MPSDialectResourceBlobHandle>();
  if (v5 == mlir::detail::TypeIDResolver<mlir::mps::MPSDialectResourceBlobHandle,void>::resolveTypeID(void)::id)
  {
    goto LABEL_33;
  }

LABEL_4:
  v18 = 257;
  (*(*a1 + 16))(v24, a1, v17);
  if (!v24[0])
  {
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v34 != 1)
    {
      return *&v4;
    }

    goto LABEL_12;
  }

  LODWORD(v22) = 3;
  *(&v22 + 1) = "provided resource handle differs from the expected resource type";
  v23 = 64;
  if (v26 >= v27)
  {
    if (v25 > &v22 || v25 + 24 * v26 <= &v22)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v6 = v25 + 24 * v26;
  v4 = v22;
  *(v6 + 2) = v23;
  *v6 = v4;
  ++v26;
  v7 = v24[0];
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v7)
  {
    mlir::InFlightDiagnostic::report(v24);
  }

  if (v34 == 1)
  {
LABEL_12:
    if (v33 != &v34)
    {
      free(v33);
    }

    v8 = __p;
    if (__p)
    {
      v9 = v32;
      v10 = __p;
      if (v32 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v32 = v8;
      operator delete(v10);
    }

    v11 = v29;
    if (v29)
    {
      v12 = v30;
      v13 = v29;
      if (v30 != v29)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v29;
      }

      v30 = v11;
      operator delete(v13);
    }

    if (v25 != &v28)
    {
      free(v25);
    }
  }

  return *&v4;
}

void mlir::mps::serialization::ModuleOp::create(uint64_t a1, __int128 *a2)
{
  v4 = a1;
  v3[0] = mlir::Attribute::getContext(&v4);
  memset(&v3[1], 0, 24);
  mlir::OpBuilder::create<mlir::mps::serialization::ModuleOp,std::optional<llvm::StringRef> &>(v3, v4, a2);
}

void mlir::OpBuilder::create<mlir::mps::serialization::ModuleOp,std::optional<llvm::StringRef> &>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v13[38] = *MEMORY[0x277D85DE8];
  v9 = a2;
  Context = mlir::Attribute::getContext(&v9);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::ModuleOp,void>::id, Context);
  if (v8)
  {
    mlir::OperationState::OperationState(v13, a2, v7);
    v11 = *a3;
    v12 = *(a3 + 2);
    mlir::mps::serialization::ModuleOp::build(a1, v13);
  }

  mlir::OpBuilder::create<mlir::mps::serialization::ModuleOp>(v13, &v11, v10);
}

void *mlir::mps::serialization::ModuleOp::getDataLayoutSpec(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (!v2)
  {
    return 0;
  }

  v3 = 16 * v2;
  for (i = (Value + 8); ; i += 2)
  {
    result = llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(*i);
    if (result)
    {
      break;
    }

    v3 -= 16;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

BOOL mlir::mps::serialization::ModuleOp::verify(mlir::Operation **this)
{
  v75 = *MEMORY[0x277D85DE8];
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v2)
  {
    v3 = Value;
    for (i = 16 * v2; i; i -= 16)
    {
      v49 = *v3;
      AttrDictionary = mlir::NamedAttribute::getName(&v49);
      v6 = mlir::StringAttr::getValue(&AttrDictionary);
      if (!v7 || (v8 = v6, (v9 = memchr(v6, 46, v7)) == 0) || v9 - v8 == -1)
      {
        *&v51 = mlir::NamedAttribute::getName(&v49);
        v10 = mlir::StringAttr::getValue(&v51);
        if (v11 == 14)
        {
          if (*v10 != 0x697369765F6D7973 || *(v10 + 6) != 0x7974696C69626973)
          {
LABEL_15:
            v48 = 257;
            mlir::OpState::emitOpError(this, &v47, &AttrDictionary);
            if (AttrDictionary)
            {
              LODWORD(v51) = 3;
              *(&v51 + 1) = "can only contain attributes with dialect-prefixed names, found: '";
              v52 = 65;
              if (v66 >= v67)
              {
                if (v65 > &v51 || v65 + 24 * v66 <= &v51)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v12 = v65 + 24 * v66;
              v13 = v51;
              *(v12 + 2) = v52;
              *v12 = v13;
              ++v66;
            }

            Name = mlir::NamedAttribute::getName(&v49);
            v14 = mlir::StringAttr::getValue(&Name);
            if (AttrDictionary)
            {
              LOWORD(v54) = 261;
              *&v51 = v14;
              *(&v51 + 1) = v15;
              mlir::Diagnostic::operator<<(&v64, &v51);
              if (AttrDictionary)
              {
                LODWORD(v51) = 3;
                *(&v51 + 1) = "'";
                v52 = 1;
                if (v66 >= v67)
                {
                  if (v65 > &v51 || v65 + 24 * v66 <= &v51)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v16 = v65 + 24 * v66;
                v17 = v51;
                *(v16 + 2) = v52;
                *v16 = v17;
                ++v66;
              }
            }

            v18 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&AttrDictionary);
            if (AttrDictionary)
            {
              mlir::InFlightDiagnostic::report(&AttrDictionary);
            }

            if (v74 == 1)
            {
              if (v73 != &v74)
              {
                free(v73);
              }

              v19 = __p;
              if (__p)
              {
                v20 = v72;
                v21 = __p;
                if (v72 != __p)
                {
                  do
                  {
                    v20 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v20 - 1);
                  }

                  while (v20 != v19);
                  v21 = __p;
                }

                v72 = v19;
                operator delete(v21);
              }

              v22 = v69;
              if (v69)
              {
                v23 = v70;
                v24 = v69;
                if (v70 != v69)
                {
                  do
                  {
                    v26 = *--v23;
                    v25 = v26;
                    *v23 = 0;
                    if (v26)
                    {
                      MEMORY[0x259C63150](v25, 0x1000C8077774924);
                    }
                  }

                  while (v23 != v22);
                  v24 = v69;
                }

                v70 = v22;
                operator delete(v24);
              }

              if (v65 != &v68)
              {
                free(v65);
              }
            }

            return v18;
          }
        }

        else if (v11 != 8 || *v10 != 0x656D616E5F6D7973)
        {
          goto LABEL_15;
        }
      }

      ++v3;
    }
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v27 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v28)
  {
    v29 = v27;
    v30 = 0;
    v45 = (v27 + 16 * v28);
    do
    {
      v31 = llvm::DefaultDoCastIfPossible<mlir::DataLayoutSpecInterface,mlir::Attribute const,llvm::CastInfo<mlir::DataLayoutSpecInterface,mlir::Attribute const,void>>::doCastIfPossible(*(v29 + 1));
      if (v31)
      {
        v32 = v31;
        if (v30)
        {
          v48 = 257;
          mlir::OpState::emitOpError(this, &v47, &v51);
          if (v51)
          {
            LODWORD(v49) = 3;
            *(&v49 + 1) = "expects at most one data layout attribute";
            v50 = 41;
            if (v54 >= v55)
            {
              if (v53 > &v49 || v53 + 24 * v54 <= &v49)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v33 = v53 + 24 * v54;
            v34 = v49;
            *(v33 + 2) = v50;
            *v33 = v34;
            ++v54;
          }

          mlir::InFlightDiagnostic::InFlightDiagnostic(&AttrDictionary, &v51);
          if (v51)
          {
            mlir::InFlightDiagnostic::report(&v51);
          }

          if (v62 == 1)
          {
            if (v61 != &v62)
            {
              free(v61);
            }

            v35 = v59;
            if (v59)
            {
              v36 = v60;
              v37 = v59;
              if (v60 != v59)
              {
                do
                {
                  v36 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v36 - 1);
                }

                while (v36 != v35);
                v37 = v59;
              }

              v60 = v35;
              operator delete(v37);
            }

            v38 = v57;
            if (v57)
            {
              v39 = v58;
              v40 = v57;
              if (v58 != v57)
              {
                do
                {
                  v42 = *--v39;
                  v41 = v42;
                  *v39 = 0;
                  if (v42)
                  {
                    MEMORY[0x259C63150](v41, 0x1000C8077774924);
                  }
                }

                while (v39 != v38);
                v40 = v57;
              }

              v58 = v38;
              operator delete(v40);
            }

            if (v53 != &v56)
            {
              free(v53);
            }
          }

          mlir::Diagnostic::attachNote();
        }

        AttrDictionary = mlir::NamedAttribute::getName(v29);
        mlir::StringAttr::getValue(&AttrDictionary);
        v30 = v32;
      }

      v29 = (v29 + 16);
    }

    while (v29 != v45);
  }

  return 1;
}

void mlir::mps::serialization::FuncOp::create(uint64_t a1, const llvm::Twine *a2, size_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v13[38] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v11[0] = mlir::Attribute::getContext(&v12);
  memset(&v11[1], 0, 24);
  mlir::OperationState::OperationState(v13, v12, "mps.func", 8);
  mlir::mps::serialization::FuncOp::build(v11, v13, a2, a3, a4, a5, a6);
}

{
  v13[38] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v11[0] = mlir::Attribute::getContext(&v12);
  memset(&v11[1], 0, 24);
  mlir::OperationState::OperationState(v13, v12, "mps.func", 8);
  mlir::mps::serialization::FuncOp::build(v11, v13, a2, a3, a4, a5, a6);
}

void mlir::mps::serialization::FuncOp::build(mlir::StringAttr **a1, uint64_t a2, const llvm::Twine *a3, size_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v19 = 261;
  v18[0] = a3;
  v18[1] = a4;
  StringAttr = mlir::Builder::getStringAttr(a1, v18, a3);
  Context = mlir::Attribute::getContext(a2);
  v22 = 261;
  v20 = "sym_name";
  v21 = 8;
  v14 = mlir::StringAttr::get(Context, &v20, v13);
  mlir::NamedAttribute::NamedAttribute(v23, v14, StringAttr);
  mlir::NamedAttrList::push_back(a2 + 112, v23[0], v23[1]);
  v15 = *(*(*(a2 + 8) + 96) + 8);
  v16 = mlir::TypeAttr::get(a5);
  mlir::NamedAttribute::NamedAttribute(&v20, v15, v16);
  mlir::NamedAttrList::push_back(a2 + 112, v20, v21);
  *(a2 + 192) = 0;
  v17 = *(a2 + 120);
  if (v17 + ((16 * a7) >> 4) > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a7)
  {
    memcpy((*(a2 + 112) + 16 * v17), a6, 16 * a7);
    LODWORD(v17) = *(a2 + 120);
  }

  *(a2 + 120) = v17 + a7;
  mlir::OperationState::addRegion(a2);
}

void mlir::mps::serialization::FuncOp::create(uint64_t a1, const llvm::Twine *a2, size_t a3, uint64_t a4, void *a5)
{
  v15[38] = *MEMORY[0x277D85DE8];
  llvm::SmallVector<mlir::NamedAttribute,8u>::SmallVector<mlir::Operation::dialect_attr_iterator>(&v13, a5);
  v9 = v13;
  v10 = v14;
  v12 = a1;
  v11[0] = mlir::Attribute::getContext(&v12);
  memset(&v11[1], 0, 24);
  mlir::OperationState::OperationState(v15, v12, "mps.func", 8);
  mlir::mps::serialization::FuncOp::build(v11, v15, a2, a3, a4, v9, v10);
}

void mlir::mps::serialization::FuncOp::print(mlir::mps::serialization::FuncOp *this, mlir::OpAsmPrinter *a2)
{
  v4 = *this;
  InterfaceFor = mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(*this);
  v9 = *(*(*(*this + 48) + 96) + 8);
  Value = mlir::StringAttr::getValue(&v9);
  v7 = *(*(*this + 48) + 96);
  mlir::function_interface_impl::printFunctionOp(a2, v4, InterfaceFor, 0, Value, v8, *v7, v7[2]);
}

void mlir::mps::serialization::FuncOp::cloneInto(mlir::Operation **a1, unsigned int *a2, mlir::IRMapping *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = 0;
  *v33 = 0u;
  v35 = &v37;
  v36 = 0;
  AttrDictionary = mlir::Operation::getAttrDictionary(a2);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v7)
  {
    v8 = Value;
    v9 = (Value + 16 * v7);
    do
    {
      Name = mlir::NamedAttribute::getName(v8);
      v12 = *(v8 + 1);
      v31 = Name;
      v32 = v12;
      *&v38 = Name;
      DWORD2(v38) = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>(v33, &v38, &v38 + 2, &AttrDictionary);
      if (v41[0] == 1)
      {
        v13 = v36;
        *(AttrDictionary + 2) = v36;
        v37 = &v32;
        *&v38 = &v31;
        if (v13 < HIDWORD(v36))
        {
          v10 = (v35 + 16 * v13);
          *v10 = v31;
          v10[1] = v32;
          LODWORD(v36) = v36 + 1;
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<mlir::Block *&&>>(&v35, &std::piecewise_construct, &v38, &v37);
        }
      }

      v8 = (v8 + 16);
    }

    while (v8 != v9);
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(*a1);
  v14 = mlir::DictionaryAttr::getValue(&AttrDictionary);
  if (v15)
  {
    v16 = v14;
    v17 = (v14 + 16 * v15);
    do
    {
      v19 = mlir::NamedAttribute::getName(v16);
      v20 = *(v16 + 1);
      v31 = v19;
      v32 = v20;
      *&v38 = v19;
      DWORD2(v38) = 0;
      llvm::DenseMapBase<llvm::DenseMap<mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>,mlir::StringAttr,unsigned int,llvm::DenseMapInfo<mlir::StringAttr,void>,llvm::detail::DenseMapPair<mlir::StringAttr,unsigned int>>::try_emplace<unsigned int>(v33, &v38, &v38 + 2, &AttrDictionary);
      if (v41[0] == 1)
      {
        v21 = v36;
        *(AttrDictionary + 2) = v36;
        v37 = &v32;
        *&v38 = &v31;
        if (v21 < HIDWORD(v36))
        {
          v18 = (v35 + 16 * v21);
          *v18 = v31;
          v18[1] = v32;
          LODWORD(v36) = v36 + 1;
        }

        else
        {
          llvm::SmallVectorTemplateBase<std::pair<mlir::pdl_to_pdl_interp::Qualifier *,mlir::Block *>,true>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<mlir::pdl_to_pdl_interp::Qualifier *&&>,std::tuple<mlir::Block *&&>>(&v35, &std::piecewise_construct, &v38, &v37);
        }
      }

      v16 = (v16 + 16);
    }

    while (v16 != v17);
  }

  v22 = v35;
  v23 = v36;
  AttrDictionary = v41;
  v40 = 0x300000000;
  if (v36 >= 4)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v36)
  {
    v24 = (v35 + 16 * v36);
    v25 = AttrDictionary;
    do
    {
      v26 = *v22;
      v27 = v22[1];
      v22 += 2;
      mlir::NamedAttribute::NamedAttribute(&v38, v26, v27);
      *v25++ = v38;
    }

    while (v22 != v24);
    v28 = v40;
  }

  else
  {
    v28 = 0;
  }

  LODWORD(v40) = v28 + v23;
  Context = mlir::Attribute::getContext((*a1 + 24));
  v30 = mlir::DictionaryAttr::get(Context, AttrDictionary, v40);
  mlir::Operation::setAttrs(a2, v30);
  mlir::Region::cloneInto((((*a1 + 16 * ((*(*a1 + 11) >> 23) & 1) + ((*(*a1 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 10)), (((&a2[4 * ((a2[11] >> 23) & 1) + 17] + ((a2[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a2[10]), a3);
  if (AttrDictionary != v41)
  {
    free(AttrDictionary);
  }

  if (v35 != &v37)
  {
    free(v35);
  }

  llvm::deallocate_buffer(v33[0], (16 * v34));
}

void mlir::mps::serialization::FuncOp::clone(mlir::Operation **this)
{
  v1[0] = 0;
  v1[1] = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  mlir::mps::serialization::FuncOp::clone(this, v1);
}

uint64_t mlir::OpBuilder::create<mlir::mps::serialization::YieldOp>(mlir::OpBuilder *a1, uint64_t a2)
{
  v13[38] = *MEMORY[0x277D85DE8];
  v10 = a2;
  Context = mlir::Attribute::getContext(&v10);
  v5 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::serialization::YieldOp,void>::id, Context);
  if ((v6 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::serialization::YieldOp,mlir::TypeRange,mlir::ValueRange>(v13, v12, v11);
  }

  mlir::OperationState::OperationState(v13, a2, v5);
  v7 = mlir::OpBuilder::create(a1, v13);
  if (*(*(v7 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::YieldOp,void>::id)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  mlir::OperationState::~OperationState(v13);
  return v8;
}

unint64_t *mlir::mps::serialization::ConditionOp::getSuccessorRegions(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 48);
  v33[1] = *(*a1 + 56);
  v33[2] = v9;
  v34 = 1;
  v10 = *(v8 + 44);
  v11 = v10 & 0x7FFFFF;
  if ((v10 & 0x7FFFFF) != 0)
  {
    v12 = ((v8 + 16 * ((v10 >> 23) & 1) + ((v10 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v8 + 40);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  mlir::RegionRange::RegionRange(&v35, v12, v11);
  v36 = a2;
  v37 = a3;
  v13 = *(*a1 + 16);
  if (v13)
  {
    ParentOp = mlir::Block::getParentOp(v13);
    v15 = *v36;
    if (*v36)
    {
      goto LABEL_6;
    }

LABEL_13:
    v33[0] = 0;
    goto LABEL_14;
  }

  ParentOp = 0;
  v15 = *a2;
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (mlir::BoolAttr::classof(v15))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v33[0] = v16;
  if (v16 && !mlir::BoolAttr::getValue(v33))
  {
LABEL_20:
    if (v33[0])
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_14:
  v17 = ((&ParentOp[4 * ((ParentOp[11] >> 23) & 1) + 17] + ((ParentOp[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * ParentOp[10];
  v18 = v17 + 24;
  v32 = v17 + 24;
  if (*(v17 + 24) == v17 + 24)
  {
    v21 = 0;
    v22 = 0;
    v30 = 0;
    v31 = 0;
    v23 = *(a4 + 8);
    if (v23 < *(a4 + 12))
    {
LABEL_19:
      v24 = (*a4 + 24 * v23);
      *v24 = v18;
      mlir::ValueRange::ValueRange(v24 + 1, v21, v22);
      ++*(a4 + 8);
      goto LABEL_20;
    }
  }

  else
  {
    v19 = *(v17 + 32);
    if (v19)
    {
      v20 = v19 - 8;
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v20 + 48);
    v22 = (*(v20 + 56) - v21) >> 3;
    v30 = v21;
    v31 = v22;
    v23 = *(a4 + 8);
    if (v23 < *(a4 + 12))
    {
      goto LABEL_19;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(a4, &v32, &v30);
  if (v33[0])
  {
LABEL_21:
    result = mlir::BoolAttr::getValue(v33);
    if (result)
    {
      return result;
    }
  }

LABEL_22:
  v26 = ParentOp[9];
  if (v26)
  {
    v27 = (ParentOp - 4);
  }

  else
  {
    v27 = 0;
  }

  v30 = v27;
  v31 = v26;
  v28 = *(a4 + 8);
  if (v28 >= *(a4 + 12))
  {
    return llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(a4, &v30);
  }

  v29 = (*a4 + 24 * v28);
  *v29 = 0;
  result = mlir::ValueRange::ValueRange(v29 + 1, v27, v26);
  ++*(a4 + 8);
  return result;
}

uint64_t mlir::mps::serialization::IfOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = *MEMORY[0x277D85DE8];
  v23[0] = a9;
  v23[1] = a10;
  if (!a10)
  {
    return 0;
  }

  v11 = mlir::RegionRange::dereference_iterator(v23, 0);
  if (*v11 == v11)
  {
    return 0;
  }

  v12 = v11[1];
  v13 = v12 ? v12 - 8 : 0;
  v14 = *(v13 + 32);
  if (v14 == v13 + 32)
  {
    return 0;
  }

  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v14);
  if (*(*(ValuePtr + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::serialization::YieldOp,void>::id)
  {
    return 0;
  }

  if ((*(ValuePtr + 46) & 0x80) != 0)
  {
    v17 = *(ValuePtr + 72);
    v18 = *(ValuePtr + 68);
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v24 = v17;
  v25 = v18;
  mlir::OperandRange::getTypes(&v24, &v19);
  mlir::ValueRange::ValueRange(&v24, v19 + 32 * v20, v21 - v20);
  mlir::TypeRange::TypeRange(v22, v24, v25);
  llvm::SmallVectorImpl<mlir::Type>::insert<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(a11, *a11 + 8 * *(a11 + 8), v22[0], 0, v22[0], v22[1]);
  return 1;
}

char *llvm::SmallVectorImpl<mlir::Type>::insert<llvm::detail::indexed_accessor_range_base<mlir::TypeRange,llvm::PointerUnion<mlir::Value const*,mlir::Type const*,mlir::OpOperand *,mlir::detail::OpResultImpl *>,mlir::Type,mlir::Type,mlir::Type>::iterator,void>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *a1;
  v11 = a2 - *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = a6 - a4;
  v15 = a6 - a4 + v12;
  if (*a1 + 8 * v12 != a2)
  {
    if (v15 > v13)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    __src = (v10 + v11);
    v16 = 8 * v12;
    v17 = (v10 + 8 * v12);
    v18 = 8 * v12 - v11;
    v19 = v18 >> 3;
    if (v18 >> 3 < v14)
    {
      v20 = v12 + v14;
      *(a1 + 2) = v20;
      if (v16 == v11)
      {
        v21 = (v10 + v11);
      }

      else
      {
        v28 = (v10 + 8 * v20 - 8 * v19);
        v21 = (v10 + v11);
        memcpy(v28, __src, v18);
        v29 = __src;
        do
        {
          *v29++ = mlir::TypeRange::dereference_iterator(a3, v7++);
          --v19;
        }

        while (v19);
      }

      for (; a6 != v7; ++v7)
      {
        *v17++ = mlir::TypeRange::dereference_iterator(a3, v7);
      }

      return v21;
    }

    v23 = 8 * v14;
    if (v12 + ((8 * v14) >> 3) > *(a1 + 3))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v24 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    if (a6 == a4)
    {
      goto LABEL_29;
    }

    v25 = (*a1 + 8 * v12);
    v26 = 8 * a6 - 8 * a4 - 8;
    if (v26 >= 0x38)
    {
      v30 = 8 * v12 + *a1;
      v27 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
      if ((v30 - v24) >= 0x20)
      {
        v31 = (v26 >> 3) + 1;
        v32 = v31 & 0x3FFFFFFFFFFFFFFCLL;
        v25 = (v25 + v32 * 8);
        v27 = &v24[v32];
        v33 = (8 * a4 + v16 - 8 * a6 + v10 + 16);
        v34 = (v30 + 16);
        v35 = v31 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v36 = *v33;
          *(v34 - 1) = *(v33 - 1);
          *v34 = v36;
          v33 += 2;
          v34 += 2;
          v35 -= 4;
        }

        while (v35);
        if (v31 == (v31 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v27 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    }

    do
    {
      v37 = *v27++;
      *v25++ = v37;
    }

    while (v27 != v17);
LABEL_29:
    *(a1 + 2) = v12 + v14;
    v21 = __src;
    if (v24 != __src)
    {
      memmove(&__src[v23 / 8], __src, &v17[v23 / 0xFFFFFFFFFFFFFFF8] - __src);
    }

    if (a6 != v7)
    {
      v38 = __src;
      do
      {
        *v38++ = mlir::TypeRange::dereference_iterator(a3, v7++);
      }

      while (a6 != v7);
    }

    return v21;
  }

  if (v15 > v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6 != a4)
  {
    v22 = (v10 + 8 * v12);
    do
    {
      *v22++ = mlir::TypeRange::dereference_iterator(a3, v7++);
    }

    while (a6 != v7);
    LODWORD(v12) = *(a1 + 2);
    v10 = *a1;
  }

  *(a1 + 2) = v12 + v14;
  return (v10 + v11);
}

void mlir::mps::serialization::IfOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  mlir::mps::serialization::IfOp::build(a1, a2, a3, a4, a5);
}

{
  v11[3] = *MEMORY[0x277D85DE8];
  v11[0] = a5;
  v8 = *(a2 + 72);
  if (a4 + v8 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v9 = 0;
    v10 = *(a2 + 64) + 8 * v8;
    do
    {
      *(v10 + 8 * v9) = mlir::TypeRange::dereference_iterator(a3, v9);
      ++v9;
    }

    while (a4 != v9);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + a4;
  mlir::OperationState::addOperands(a2, v11, 1uLL);
  mlir::OperationState::addRegion(a2);
}

{
  v11[3] = *MEMORY[0x277D85DE8];
  v11[0] = a5;
  v8 = *(a2 + 72);
  if (a4 + v8 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v9 = 0;
    v10 = *(a2 + 64) + 8 * v8;
    do
    {
      *(v10 + 8 * v9) = mlir::TypeRange::dereference_iterator(a3, v9);
      ++v9;
    }

    while (a4 != v9);
    LODWORD(v8) = *(a2 + 72);
  }

  *(a2 + 72) = v8 + a4;
  mlir::OperationState::addOperands(a2, v11, 1uLL);
  mlir::OperationState::addRegion(a2);
}

void mlir::mps::serialization::IfOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[2] = *MEMORY[0x277D85DE8];
  mlir::TypeRange::TypeRange(v6, 0, 0);
  mlir::mps::serialization::IfOp::build(a1, a2, v6[0], v6[1], a3);
}

void mlir::mps::serialization::IfOp::build(uint64_t a1, mlir::OperationState *a2, uint64_t a3)
{
  v4[13] = *MEMORY[0x277D85DE8];
  v4[0] = a3;
  mlir::OperationState::addOperands(a2, v4, 1uLL);
  mlir::OperationState::addRegion(a2);
}

uint64_t mlir::mps::serialization::IfOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, " ", 1uLL);
  }

  else
  {
    *v5 = 32;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = *(*this + 9);
  if (v6)
  {
    v7 = (*(*a2 + 16))(a2);
    v8 = v7[4];
    if ((v7[3] - v8) > 4)
    {
      *(v8 + 4) = 40;
      *v8 = 540945696;
      v7[4] += 5;
    }

    else
    {
      llvm::raw_ostream::write(v7, " -> (", 5uLL);
    }

    v9 = *(*this + 9);
    v10 = *this - 16;
    if (!v9)
    {
      v10 = 0;
    }

    v35[0] = v10;
    v35[1] = v9;
    mlir::ResultRange::getTypes(v35, &AttrDictionary);
    v11 = v33;
    v12 = v34;
    if (v33 != v34)
    {
      v13 = AttrDictionary;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(AttrDictionary, v33);
      (*(*a2 + 32))(a2, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
      for (i = v11 + 1; v12 != i; ++i)
      {
        v30 = (*(*a2 + 16))(a2);
        v31 = v30[4];
        if (v30[3] - v31 <= 1uLL)
        {
          llvm::raw_ostream::write(v30, ", ", 2uLL);
        }

        else
        {
          *v31 = 8236;
          v30[4] += 2;
        }

        v29 = mlir::detail::OpResultImpl::getNextResultAtOffset(v13, i);
        (*(*a2 + 32))(a2, *(v29 + 8) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v16 = (*(*a2 + 16))(a2);
    v17 = v16[4];
    if (v16[3] == v17)
    {
      llvm::raw_ostream::write(v16, ")", 1uLL);
    }

    else
    {
      *v17 = 41;
      ++v16[4];
    }
  }

  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  (*(*a2 + 224))(a2, ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10), 0, v6 != 0, 0);
  v20 = *this;
  v21 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  v23 = *(v21 + 24);
  v22 = v21 + 24;
  if (v23 != v22)
  {
    v24 = (*(*a2 + 16))(a2);
    v25 = v24[4];
    if ((v24[3] - v25) > 5)
    {
      *(v25 + 4) = 8293;
      *v25 = 1936483616;
      v24[4] += 6;
    }

    else
    {
      llvm::raw_ostream::write(v24, " else ", 6uLL);
    }

    (*(*a2 + 224))(a2, v22, 0, v6 != 0, 0);
    v20 = *this;
  }

  AttrDictionary = mlir::Operation::getAttrDictionary(v20);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  return (*(*a2 + 192))(a2, Value, v27, 0, 0);
}

__n128 mlir::mps::serialization::IfOp::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v5 = *(*a1 + 36);
    if (v5)
    {
      v6 = *a1 - 16;
    }

    else
    {
      v6 = 0;
    }

    v18.n128_u64[0] = 0;
    mlir::ValueRange::ValueRange(&v18.n128_u64[1], v6, v5);
    v7 = *(a3 + 8);
    v8 = *a3;
    if (v7 >= *(a3 + 12))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v18.n128_u64[0] = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    mlir::ValueRange::ValueRange(&v18.n128_u64[1], 0, 0);
    v9 = *(a3 + 8);
    v10 = *a3;
    if (v9 >= *(a3 + 12))
    {
      if (v10 > &v18 || v10 + 24 * v9 <= &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v11 = (v10 + 24 * *(a3 + 8));
    v12 = v18;
    v11[1].n128_u64[0] = v19;
    *v11 = v12;
    ++*(a3 + 8);
    v13 = ((*a1 + 16 * ((*(*a1 + 44) >> 23) & 1) + ((*(*a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*a1 + 40);
    v15 = *(v13 + 24);
    v14 = v13 + 24;
    if (v15 == v14)
    {
      v18.n128_u64[0] = 0;
    }

    else
    {
      v18.n128_u64[0] = v14;
    }

    mlir::ValueRange::ValueRange(&v18.n128_u64[1], 0, 0);
    v7 = *(a3 + 8);
    v8 = *a3;
    if (v7 >= *(a3 + 12))
    {
LABEL_13:
      if (v8 <= &v18 && v8 + 24 * v7 > &v18)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }
  }

  v16 = (v8 + 24 * *(a3 + 8));
  result = v18;
  v16[1].n128_u64[0] = v19;
  *v16 = result;
  ++*(a3 + 8);
  return result;
}

void mlir::mps::serialization::IfOp::getRegionInvocationBounds(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  if (!*a2 || (!(v6 = mlir::BoolAttr::classof(*a2)) ? (v7 = 0) : (v7 = v5), v23 = v7, !v6))
  {
    *v21 = 0;
    *&v21[4] = 0x100000001;
    v14 = *v21;
    if (*(a4 + 12) <= 1u)
    {
      *(a4 + 8) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v15 = *(a4 + 8);
    if (v15)
    {
      v16 = *a4;
      *v16 = *v21;
      *(v16 + 8) = 1;
      if (v15 != 1)
      {
        *(v16 + 12) = v14;
        *(v16 + 20) = 1;
      }

      v17 = *(a4 + 8);
      if (v17 > 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = *a4 + 12 * v17;
    v19 = v17 - 2;
    do
    {
      *v18 = v14;
      *(v18 + 8) = 1;
      v18 += 12;
    }

    while (!__CFADD__(v19++, 1));
LABEL_21:
    *(a4 + 8) = 2;
    return;
  }

  *v21 = 0;
  Value = mlir::BoolAttr::getValue(&v23);
  v22 = Value;
  v9 = *(a4 + 8);
  if (v9 >= *(a4 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,int>(a4, v21, &v22);
  }

  else
  {
    v10 = *a4 + 12 * v9;
    *v10 = 0;
    *(v10 + 4) = Value | 0x100000000;
    ++*(a4 + 8);
  }

  *v21 = 0;
  v11 = mlir::BoolAttr::getValue(&v23);
  v22 = !v11;
  v12 = *(a4 + 8);
  if (v12 >= *(a4 + 12))
  {
    llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,int>(a4, v21, &v22);
  }

  else
  {
    v13 = *a4 + 12 * v12;
    *v13 = 0;
    *(v13 + 4) = !v11 | 0x100000000;
    ++*(a4 + 8);
  }
}

BOOL mlir::mps::serialization::IfOp::verify(mlir::Operation **this)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(*this + 9))
  {
    return 1;
  }

  v1 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(v1 + 24) != v1 + 24)
  {
    return 1;
  }

  v12 = "must have an else block if defining values";
  v13 = 259;
  mlir::OpState::emitOpError(this, &v12, v14);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v14);
  v3 = result;
  if (v14[0])
  {
    mlir::InFlightDiagnostic::report(v14);
    result = v3;
  }

  if (v22 == 1)
  {
    if (v21 != &v22)
    {
      free(v21);
      result = v3;
    }

    v4 = __p;
    if (__p)
    {
      v5 = v20;
      v6 = __p;
      if (v20 != __p)
      {
        do
        {
          v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
        }

        while (v5 != v4);
        v6 = __p;
      }

      v20 = v4;
      operator delete(v6);
      result = v3;
    }

    v7 = v17;
    if (v17)
    {
      v8 = v18;
      v9 = v17;
      if (v18 != v17)
      {
        do
        {
          v11 = *--v8;
          v10 = v11;
          *v8 = 0;
          if (v11)
          {
            MEMORY[0x259C63150](v10, 0x1000C8077774924);
          }
        }

        while (v8 != v7);
        v9 = v17;
      }

      v18 = v7;
      operator delete(v9);
      result = v3;
    }

    if (v15 != &v16)
    {
      free(v15);
      return v3;
    }
  }

  return result;
}

void mlir::mps::serialization::WhileOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20[4] = a5;
  v20[5] = a6;
  mlir::OperationState::addOperands(a2, a5, a6);
  v11 = *(a2 + 72);
  if (a4 + v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v12 = 0;
    v13 = *(a2 + 64) + 8 * v11;
    do
    {
      *(v13 + 8 * v12) = mlir::TypeRange::dereference_iterator(a3, v12);
      ++v12;
    }

    while (a4 != v12);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + a4;
  v18 = v20;
  v19 = 0x400000000;
  if (a6 >= 5)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v16 = a5;
  v17 = 0;
  if (a6)
  {
    v14 = 0;
    do
    {
      v21[0] = mlir::ValueRange::dereference_iterator(&v16, v14);
      Loc = mlir::Value::getLoc(v21);
      if (v19 >= HIDWORD(v19))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(v18 + v19) = Loc;
      LODWORD(v19) = v19 + 1;
      v14 = v17 + 1;
      v17 = v14;
    }

    while (v14 != a6);
  }

  mlir::OperationState::addRegion(a2);
}

void mlir::mps::serialization::WhileOp::parse(mlir::mps::serialization::WhileOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v8[32] = *MEMORY[0x277D85DE8];
  v6 = v8;
  v7 = 0x400000000;
  v3 = &v5;
  v4 = 0x400000000;
  mlir::OperationState::addRegion(a2);
}

BOOL mlir::AsmParser::parseColonType<mlir::FunctionType>(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 40))(a1);
  v18 = 0;
  if (((*(*a1 + 576))(a1, &v18) & 1) == 0)
  {
    return 0;
  }

  v5 = v18;
  if (*(*v18 + 136) != &mlir::detail::TypeIDResolver<mlir::FunctionType,void>::id)
  {
    v5 = 0;
  }

  *a2 = v5;
  if (v5)
  {
    return 1;
  }

  v16 = "invalid kind of type specified";
  v17 = 259;
  (*(*a1 + 24))(v19, a1, v4, &v16);
  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v19);
  v7 = result;
  if (v19[0])
  {
    mlir::InFlightDiagnostic::report(v19);
    result = v7;
  }

  if (v27 == 1)
  {
    if (v26 != &v27)
    {
      free(v26);
      result = v7;
    }

    v8 = __p;
    if (__p)
    {
      v9 = v25;
      v10 = __p;
      if (v25 != __p)
      {
        do
        {
          v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
        }

        while (v9 != v8);
        v10 = __p;
      }

      v25 = v8;
      operator delete(v10);
      result = v7;
    }

    v11 = v22;
    if (v22)
    {
      v12 = v23;
      v13 = v22;
      if (v23 != v22)
      {
        do
        {
          v15 = *--v12;
          v14 = v15;
          *v12 = 0;
          if (v15)
          {
            MEMORY[0x259C63150](v14, 0x1000C8077774924);
          }
        }

        while (v12 != v11);
        v13 = v22;
      }

      v23 = v11;
      operator delete(v13);
      result = v7;
    }

    if (v20 != &v21)
    {
      free(v20);
      return v7;
    }
  }

  return result;
}

uint64_t mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::ArrayRef<mlir::Type>>(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 2);
  v7 = a3[1];
  if (v7 == v6)
  {
    if (v6)
    {
      v9 = *a2;
      v10 = *a3;
      v11 = 32 * v6;
      while (((*(*a1 + 728))(a1, v9, *v10, a5) & 1) != 0)
      {
        v9 += 32;
        ++v10;
        v11 -= 32;
        if (!v11)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v31 = 257;
    (*(*a1 + 24))(v34, a1, a4, v30);
    if (v34[0])
    {
      LODWORD(v32) = 5;
      *(&v32 + 1) = v6;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v35 + 24 * v36;
      v14 = v32;
      *(v13 + 2) = v33;
      *v13 = v14;
      v15 = ++v36;
      if (v34[0])
      {
        LODWORD(v32) = 3;
        *(&v32 + 1) = " operands present, but expected ";
        v33 = 32;
        if (v15 >= v37)
        {
          if (v35 > &v32 || v35 + 24 * v15 <= &v32)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v35 + 24 * v36;
        v17 = v32;
        *(v16 + 2) = v33;
        *v16 = v17;
        v18 = ++v36;
        if (v34[0])
        {
          LODWORD(v32) = 5;
          *(&v32 + 1) = v7;
          if (v18 >= v37)
          {
            if (v35 > &v32 || v35 + 24 * v18 <= &v32)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v19 = v35 + 24 * v36;
          v20 = v32;
          *(v19 + 2) = v33;
          *v19 = v20;
          ++v36;
        }
      }
    }

    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v21 = __p;
      if (__p)
      {
        v22 = v42;
        v23 = __p;
        if (v42 != __p)
        {
          do
          {
            v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
          }

          while (v22 != v21);
          v23 = __p;
        }

        v42 = v21;
        operator delete(v23);
      }

      v24 = v39;
      if (v39)
      {
        v25 = v40;
        v26 = v39;
        if (v40 != v39)
        {
          do
          {
            v28 = *--v25;
            v27 = v28;
            *v25 = 0;
            if (v28)
            {
              MEMORY[0x259C63150](v27, 0x1000C8077774924);
            }
          }

          while (v25 != v24);
          v26 = v39;
        }

        v40 = v24;
        operator delete(v26);
      }

      if (v35 != &v38)
      {
        free(v35);
      }
    }
  }

  return v12;
}

void *mlir::mps::serialization::printInitializationList(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, size_t a7)
{
  v33 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v13 = result;
    v14 = (*(*result + 16))(result);
    if (a7 <= *(v14 + 24) - *(v14 + 32))
    {
      if (a7)
      {
        v15 = v14;
        memcpy(*(v14 + 32), a6, a7);
        *(v15 + 32) += a7;
      }
    }

    else
    {
      llvm::raw_ostream::write(v14, a6, a7);
    }

    v16 = (*(*v13 + 16))(v13);
    v17 = *(v16 + 4);
    if (v17 >= *(v16 + 3))
    {
      llvm::raw_ostream::write(v16, 40);
      v29 = a2;
      v31 = a4;
      v32 = 0;
      if (!a3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(v16 + 4) = v17 + 1;
      *v17 = 40;
      v29 = a2;
      v31 = a4;
      v32 = 0;
      if (!a3)
      {
LABEL_23:
        result = (*(*v13 + 16))(v13);
        v28 = result[4];
        if (result[3] == v28)
        {
          return llvm::raw_ostream::write(result, ")", 1uLL);
        }

        *v28 = 41;
        ++result[4];
        return result;
      }
    }

    v18 = &a2[a3];
    v19 = mlir::ValueRange::dereference_iterator(&v31, 0);
    (*(*v13 + 160))(v13, *a2);
    v20 = (*(*v13 + 16))(v13);
    v21 = v20[4];
    if ((v20[3] - v21) > 2)
    {
      *(v21 + 2) = 32;
      *v21 = 15648;
      v20[4] += 3;
    }

    else
    {
      llvm::raw_ostream::write(v20, " = ", 3uLL);
    }

    (*(*v13 + 160))(v13, v19);
    v22 = v32 + 1;
    v30 = v29 + 1;
    ++v32;
    for (; v30 != v18; ++v32)
    {
      if (v22 == a5)
      {
        break;
      }

      v23 = (*(*v13 + 16))(v13);
      v24 = v23[4];
      if (v23[3] - v24 > 1uLL)
      {
        *v24 = 8236;
        v23[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v23, ", ", 2uLL);
      }

      v25 = mlir::ValueRange::dereference_iterator(&v31, v32);
      (*(*v13 + 160))(v13, *v30);
      v26 = (*(*v13 + 16))(v13);
      v27 = v26[4];
      if ((v26[3] - v27) > 2)
      {
        *(v27 + 2) = 32;
        *v27 = 15648;
        v26[4] += 3;
      }

      else
      {
        llvm::raw_ostream::write(v26, " = ", 3uLL);
      }

      (*(*v13 + 160))(v13, v25);
      v22 = v32 + 1;
      ++v30;
    }

    goto LABEL_23;
  }

  return result;
}

llvm::raw_ostream *mlir::AsmPrinter::printFunctionalType<mlir::ValueTypeRange<mlir::OperandRange>,mlir::ValueTypeRange<mlir::ResultRange>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = (*(*a1 + 16))(a1);
  v7 = v6;
  v8 = *(v6 + 4);
  if (v8 >= *(v6 + 3))
  {
    llvm::raw_ostream::write(v6, 40);
    v9 = a2[1];
    v10 = a2[3];
    if (v9 == v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(v6 + 4) = v8 + 1;
    *v8 = 40;
    v9 = a2[1];
    v10 = a2[3];
    if (v9 == v10)
    {
      goto LABEL_6;
    }
  }

  v11 = *a2 + 32 * v9;
  (*(*a1 + 32))(a1, *(*(v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v9 + 1 != v10)
  {
    v14 = ~v9 + v10;
    v15 = (v11 + 56);
    do
    {
      v17 = (*(*a1 + 16))(a1);
      v18 = v17[4];
      if (v17[3] - v18 > 1uLL)
      {
        *v18 = 8236;
        v17[4] += 2;
      }

      else
      {
        llvm::raw_ostream::write(v17, ", ", 2uLL);
      }

      v16 = *v15;
      v15 += 4;
      (*(*a1 + 32))(a1, *(v16 + 8) & 0xFFFFFFFFFFFFFFF8);
      --v14;
    }

    while (v14);
  }

LABEL_6:
  v12 = *(v7 + 4);
  if (v12 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 41);
  }

  else
  {
    *(v7 + 4) = v12 + 1;
    *v12 = 41;
  }

  return mlir::AsmPrinter::printArrowTypeList<mlir::ValueTypeRange<mlir::ResultRange> &>(a1, a3);
}

uint64_t mlir::mps::serialization::WhileOp::verify(mlir::Operation **this)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = (((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10));
  if (*v2 == v2)
  {
    goto LABEL_13;
  }

  v3 = v2[1];
  v4 = v3 - 8;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = *(v4 + 32);
  if (v5 == v4 + 32)
  {
LABEL_13:
    ValuePtr = 0;
    goto LABEL_14;
  }

  ValuePtr = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v5);
  if (*(*(ValuePtr + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::serialization::ConditionOp,void>::id)
  {
LABEL_14:
    v31 = 261;
    v29 = "expects the 'before' region to terminate with 'mps.condition'";
    v30 = 61;
    mlir::Operation::emitOpError(v32, v1, &v29);
    if (ValuePtr)
    {
      mlir::Diagnostic::attachNote();
    }

    if (v32[0])
    {
      mlir::InFlightDiagnostic::report(v32);
    }

    if (v40 != 1)
    {
      return 0;
    }

    if (v39 != &v40)
    {
      free(v39);
    }

    v15 = __p;
    if (__p)
    {
      v16 = v38;
      v17 = __p;
      if (v38 != __p)
      {
        do
        {
          v16 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v16 - 1);
        }

        while (v16 != v15);
        v17 = __p;
      }

      v38 = v15;
      operator delete(v17);
    }

    v18 = v35;
    if (!v35)
    {
      goto LABEL_53;
    }

    v19 = v36;
    v20 = v35;
    if (v36 == v35)
    {
      goto LABEL_52;
    }

    do
    {
      v22 = *--v19;
      v21 = v22;
      *v19 = 0;
      if (v22)
      {
        MEMORY[0x259C63150](v21, 0x1000C8077774924);
      }
    }

    while (v19 != v18);
    goto LABEL_51;
  }

  v8 = *this;
  v9 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  if (*(v9 + 24) == v9 + 24 || ((v10 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 32)) != 0 ? (v11 = v10 - 8) : (v11 = 0), v12 = *(v11 + 32), v12 == v11 + 32))
  {
    v13 = 0;
  }

  else
  {
    v13 = llvm::ilist_detail::SpecificNodeAccess<llvm::ilist_detail::node_options<mlir::Operation,false,false,void,false,void>>::getValuePtr(v12);
    if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::serialization::YieldOp,void>::id)
    {
      return 1;
    }
  }

  v31 = 261;
  v29 = "expects the 'after' region to terminate with 'mps.yield'";
  v30 = 56;
  mlir::Operation::emitOpError(v32, v8, &v29);
  if (v13)
  {
    mlir::Diagnostic::attachNote();
  }

  if (v32[0])
  {
    mlir::InFlightDiagnostic::report(v32);
  }

  if (v40 == 1)
  {
    if (v39 != &v40)
    {
      free(v39);
    }

    v23 = __p;
    if (__p)
    {
      v24 = v38;
      v25 = __p;
      if (v38 != __p)
      {
        do
        {
          v24 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v24 - 1);
        }

        while (v24 != v23);
        v25 = __p;
      }

      v38 = v23;
      operator delete(v25);
    }

    v18 = v35;
    if (!v35)
    {
      goto LABEL_53;
    }

    v26 = v36;
    v20 = v35;
    if (v36 == v35)
    {
LABEL_52:
      v36 = v18;
      operator delete(v20);
LABEL_53:
      if (v33 != &v34)
      {
        free(v33);
      }

      return 0;
    }

    do
    {
      v28 = *--v26;
      v27 = v28;
      *v26 = 0;
      if (v28)
      {
        MEMORY[0x259C63150](v27, 0x1000C8077774924);
      }
    }

    while (v26 != v18);
LABEL_51:
    v20 = v35;
    goto LABEL_52;
  }

  return 0;
}

void mlir::mps::serialization::ForOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  mlir::ValueRange::ValueRange(v16, &v13, 3uLL);
  mlir::OperationState::addOperands(a2, v16[0], v16[1]);
  mlir::OperationState::addOperands(a2, a6, a7);
  v13 = a6;
  v14 = 0;
  if (a7)
  {
    v10 = 0;
    do
    {
      v11 = *(mlir::ValueRange::dereference_iterator(&v13, v10) + 8);
      v12 = *(a2 + 72);
      if (v12 >= *(a2 + 76))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      *(*(a2 + 64) + 8 * v12) = v11 & 0xFFFFFFFFFFFFFFF8;
      ++*(a2 + 72);
      v10 = v14 + 1;
      v14 = v10;
    }

    while (v10 != a7);
  }

  mlir::OperationState::addRegion(a2);
}

BOOL mlir::mps::serialization::ForOp::verify(mlir::Operation **this)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = *(*(*this + 9) + 88);
  v22[0] = &v24;
  v24 = 0;
  v25[0] = v2;
  DefiningOp = mlir::Value::getDefiningOp(v25);
  if (DefiningOp && mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(v22, DefiningOp) && mlir::IntegerAttr::getInt(&v24) <= 0)
  {
    v22[0] = "constant step operand must be positive";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v25);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v8 = __p;
      if (__p)
      {
        v9 = v31;
        v10 = __p;
        if (v31 != __p)
        {
          do
          {
            v9 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v9 - 1);
          }

          while (v9 != v8);
          v10 = __p;
        }

        v31 = v8;
        operator delete(v10);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_44;
      }

      v12 = v29;
      v13 = v28;
      if (v29 == v28)
      {
        goto LABEL_43;
      }

      do
      {
        v15 = *--v12;
        v14 = v15;
        *v12 = 0;
        if (v15)
        {
          MEMORY[0x259C63150](v14, 0x1000C8077774924);
        }
      }

      while (v12 != v11);
      goto LABEL_42;
    }
  }

  else
  {
    v4 = *this;
    v5 = *(*this + 9);
    if (!v5)
    {
      return 1;
    }

    if ((*(v4 + 46) & 0x80) != 0)
    {
      if (*(v4 + 17) - 3 == v5)
      {
        return 1;
      }
    }

    else if (v5 == -3)
    {
      return 1;
    }

    v22[0] = "mismatch in number of loop-carried values and defined values";
    v23 = 259;
    mlir::OpState::emitOpError(this, v22, v25);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v25);
    if (v25[0])
    {
      mlir::InFlightDiagnostic::report(v25);
    }

    if (v33 == 1)
    {
      if (v32 != &v33)
      {
        free(v32);
      }

      v16 = __p;
      if (__p)
      {
        v17 = v31;
        v18 = __p;
        if (v31 != __p)
        {
          do
          {
            v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
          }

          while (v17 != v16);
          v18 = __p;
        }

        v31 = v16;
        operator delete(v18);
      }

      v11 = v28;
      if (!v28)
      {
        goto LABEL_44;
      }

      v19 = v29;
      v13 = v28;
      if (v29 == v28)
      {
LABEL_43:
        v29 = v11;
        operator delete(v13);
LABEL_44:
        if (v26 != &v27)
        {
          free(v26);
        }

        return v6;
      }

      do
      {
        v21 = *--v19;
        v20 = v21;
        *v19 = 0;
        if (v21)
        {
          MEMORY[0x259C63150](v20, 0x1000C8077774924);
        }
      }

      while (v19 != v11);
LABEL_42:
      v13 = v28;
      goto LABEL_43;
    }
  }

  return v6;
}

BOOL mlir::mps::serialization::ForOp::verifyRegions(mlir::Operation **this)
{
  v78 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10) + 8);
  v3 = v2 - 8;
  if (!v2)
  {
    v3 = 0;
  }

  v4 = *(v3 + 48);
  v5 = *(v1 + 9);
  if ((*(*(v5 + 24) + 8) ^ *(*v4 + 8)) >= 8)
  {
    v63[0] = "expected induction variable to be same type as bounds and step";
    v64 = 259;
    mlir::OpState::emitOpError(this, v63, v67);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
    if (v67[0])
    {
      mlir::InFlightDiagnostic::report(v67);
    }

    if (v77 != 1)
    {
      return v9;
    }

    if (v76 != &v77)
    {
      free(v76);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v75;
      v22 = __p;
      if (v75 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v75 = v20;
      operator delete(v22);
    }

    v23 = v72;
    if (v72)
    {
      v24 = v73;
      v25 = v72;
      if (v73 != v72)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        goto LABEL_95;
      }

LABEL_96:
      v73 = v23;
      operator delete(v25);
    }

LABEL_97:
    if (v68 != &v71)
    {
      free(v68);
    }

    return v9;
  }

  v6 = *(v1 + 9);
  if (!v6)
  {
    return 1;
  }

  v7 = *(v3 + 56);
  if (((v7 - v4) >> 3) - 1 != v6)
  {
    v63[0] = "mismatch in number of basic block args and defined values";
    v64 = 259;
    mlir::OpState::emitOpError(this, v63, v67);
    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
    if (v67[0])
    {
      mlir::InFlightDiagnostic::report(v67);
    }

    if (v77 != 1)
    {
      return v9;
    }

    if (v76 != &v77)
    {
      free(v76);
    }

    v28 = __p;
    if (__p)
    {
      v29 = v75;
      v30 = __p;
      if (v75 != __p)
      {
        do
        {
          v29 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v29 - 1);
        }

        while (v29 != v28);
        v30 = __p;
      }

      v75 = v28;
      operator delete(v30);
    }

    v23 = v72;
    if (v72)
    {
      v31 = v73;
      v25 = v72;
      if (v73 != v72)
      {
        do
        {
          v33 = *--v31;
          v32 = v33;
          *v31 = 0;
          if (v33)
          {
            MEMORY[0x259C63150](v32, 0x1000C8077774924);
          }
        }

        while (v31 != v23);
LABEL_95:
        v25 = v72;
        goto LABEL_96;
      }

      goto LABEL_96;
    }

    goto LABEL_97;
  }

  v8 = *(v1 + 17);
  v9 = 1;
  if (v8 != 3 && v4 + 8 != v7)
  {
    v10 = 0;
    v11 = v1 - 16;
    v12 = v4 + 16;
    v13 = (v5 + 120);
    v14 = v8 - 4;
    while (v6 != v10)
    {
      v15 = this;
      v16 = *v13;
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v11, v10);
      v18 = *(v16 + 8) & 0xFFFFFFFFFFFFFFF8;
      if (v18 != (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8))
      {
        v64 = 257;
        mlir::OpState::emitOpError(v15, v63, v67);
        if (v67[0])
        {
          LODWORD(v65) = 3;
          *(&v65 + 1) = "types mismatch between ";
          v66 = 23;
          if (v69 >= v70)
          {
            if (v68 > &v65 || v68 + 24 * v69 <= &v65)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v34 = v68 + 24 * v69;
          v35 = v65;
          *(v34 + 2) = v66;
          *v34 = v35;
          v36 = ++v69;
          if (v67[0])
          {
            LODWORD(v65) = 5;
            *(&v65 + 1) = v10;
            if (v36 >= v70)
            {
              if (v68 > &v65 || v68 + 24 * v36 <= &v65)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v37 = v68 + 24 * v69;
            v38 = v65;
            *(v37 + 2) = v66;
            *v37 = v38;
            v39 = ++v69;
            if (v67[0])
            {
              LODWORD(v65) = 3;
              *(&v65 + 1) = "th iter operand and defined value";
              v66 = 33;
              if (v39 >= v70)
              {
                if (v68 > &v65 || v68 + 24 * v39 <= &v65)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v40 = v68 + 24 * v69;
              v41 = v65;
              *(v40 + 2) = v66;
              *v40 = v41;
              ++v69;
            }
          }
        }

        v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
        if (v67[0])
        {
          mlir::InFlightDiagnostic::report(v67);
        }

        if (v77 != 1)
        {
          return v9;
        }

        if (v76 != &v77)
        {
          free(v76);
        }

        v42 = __p;
        if (__p)
        {
          v43 = v75;
          v44 = __p;
          if (v75 != __p)
          {
            do
            {
              v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
            }

            while (v43 != v42);
            v44 = __p;
          }

          v75 = v42;
          operator delete(v44);
        }

        v23 = v72;
        if (!v72)
        {
          goto LABEL_97;
        }

        v45 = v73;
        v25 = v72;
        if (v73 == v72)
        {
          goto LABEL_96;
        }

        do
        {
          v47 = *--v45;
          v46 = v47;
          *v45 = 0;
          if (v47)
          {
            MEMORY[0x259C63150](v46, 0x1000C8077774924);
          }
        }

        while (v45 != v23);
        goto LABEL_95;
      }

      this = v15;
      if ((*(*(v4 + 8 * v10 + 8) + 8) & 0xFFFFFFFFFFFFFFF8) != v18)
      {
        v64 = 257;
        mlir::OpState::emitOpError(v15, v63, v67);
        if (v67[0])
        {
          LODWORD(v65) = 3;
          *(&v65 + 1) = "types mismatch between ";
          v66 = 23;
          if (v69 >= v70)
          {
            if (v68 > &v65 || v68 + 24 * v69 <= &v65)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v48 = v68 + 24 * v69;
          v49 = v65;
          *(v48 + 2) = v66;
          *v48 = v49;
          v50 = ++v69;
          if (v67[0])
          {
            LODWORD(v65) = 5;
            *(&v65 + 1) = v10;
            if (v50 >= v70)
            {
              if (v68 > &v65 || v68 + 24 * v50 <= &v65)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v51 = v68 + 24 * v69;
            v52 = v65;
            *(v51 + 2) = v66;
            *v51 = v52;
            v53 = ++v69;
            if (v67[0])
            {
              LODWORD(v65) = 3;
              *(&v65 + 1) = "th iter region arg and defined value";
              v66 = 36;
              if (v53 >= v70)
              {
                if (v68 > &v65 || v68 + 24 * v53 <= &v65)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v54 = v68 + 24 * v69;
              v55 = v65;
              *(v54 + 2) = v66;
              *v54 = v55;
              ++v69;
            }
          }
        }

        v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v67);
        if (v67[0])
        {
          mlir::InFlightDiagnostic::report(v67);
        }

        if (v77 != 1)
        {
          return v9;
        }

        if (v76 != &v77)
        {
          free(v76);
        }

        v56 = __p;
        if (__p)
        {
          v57 = v75;
          v58 = __p;
          if (v75 != __p)
          {
            do
            {
              v57 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v57 - 1);
            }

            while (v57 != v56);
            v58 = __p;
          }

          v75 = v56;
          operator delete(v58);
        }

        v23 = v72;
        if (!v72)
        {
          goto LABEL_97;
        }

        v59 = v73;
        v25 = v72;
        if (v73 == v72)
        {
          goto LABEL_96;
        }

        do
        {
          v61 = *--v59;
          v60 = v61;
          *v59 = 0;
          if (v61)
          {
            MEMORY[0x259C63150](v60, 0x1000C8077774924);
          }
        }

        while (v59 != v23);
        goto LABEL_95;
      }

      v9 = 1;
      if (v14 != v10)
      {
        ++v10;
        v13 += 4;
        v19 = v12 == v7;
        v12 += 8;
        if (!v19)
        {
          continue;
        }
      }

      return v9;
    }

    return 1;
  }

  return v9;
}

uint64_t mlir::mps::serialization::ForOp::parse(mlir::mps::serialization::ForOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = (*(*this + 32))(this, a2, a3);
  v32 = 0;
  memset(v29, 0, 24);
  v31 = 0;
  v29[4] = 0;
  v29[5] = 0;
  v30 = 0;
  memset(v28, 0, 24);
  memset(v27, 0, 24);
  memset(v26, 0, 24);
  if (((*(*this + 704))(this, v29, 1) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 136))(this) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 704))(this, v28, 1) & 1) == 0)
  {
    return 0;
  }

  v40 = 257;
  if (((*(*this + 400))(this, "to", 2, &v37) & 1) == 0)
  {
    return 0;
  }

  if (((*(*this + 704))(this, v27, 1) & 1) == 0)
  {
    return 0;
  }

  v40 = 257;
  if (((*(*this + 400))(this, "step", 4, &v37) & 1) == 0 || ((*(*this + 704))(this, v26, 1) & 1) == 0)
  {
    return 0;
  }

  v37 = v39;
  v38 = 0x400000000;
  v34 = v36;
  v35 = 0x400000000;
  v6 = llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::push_back(&v37, v29);
  v7 = (*(*this + 408))(this, "iter_args", 9, v6);
  if ((v7 & 1) != 0 && ((mlir::OpAsmParser::parseAssignmentList(this) & 1) == 0 || ((*(*this + 560))(this, a2 + 64) & 1) == 0))
  {
    goto LABEL_33;
  }

  if (*(a2 + 18) + 1 == v38)
  {
    if ((*(*this + 112))(this))
    {
      if (((*(*this + 536))(this, &v32) & 1) == 0)
      {
LABEL_33:
        result = 0;
        goto LABEL_34;
      }

      IndexType = v32;
    }

    else
    {
      IndexType = mlir::Builder::getIndexType(v5, v8);
      v32 = IndexType;
    }

    *(v37 + 4) = IndexType;
    if ((*(*this + 728))(this, v28) & 1) != 0 && ((*(*this + 728))(this, v27, v32, a2 + 16) & 1) != 0 && ((*(*this + 728))(this, v26, v32, a2 + 16))
    {
      if ((v7 & 1) == 0 || v38 == 1 || !v35 || (v13 = *(a2 + 18), !v13))
      {
LABEL_32:
        mlir::OperationState::addRegion(a2);
      }

      v14 = 0;
      v15 = v34;
      v16 = *(a2 + 8);
      v22 = (v38 << 6) - 128;
      v23 = v37 + 96;
      v17 = (v13 << 6) - 64;
      v18 = (v35 << 6) - 64;
      while (1)
      {
        *&v23[v14] = *v16;
        if (((*(*this + 728))(this, v15) & 1) == 0)
        {
          break;
        }

        if (v22 != v14 && v18 != v14)
        {
          v15 += 32;
          ++v16;
          v19 = v17 == v14;
          v14 += 64;
          if (!v19)
          {
            continue;
          }
        }

        goto LABEL_32;
      }
    }

    goto LABEL_33;
  }

  v11 = (*(*this + 16))(this);
  v24 = "mismatch in number of loop-carried values and defined values";
  v25 = 259;
  (*(*this + 24))(v33, this, v11, &v24);
  v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v33);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(v33);
  result = v12;
LABEL_34:
  if (v34 != v36)
  {
    v20 = result;
    free(v34);
    result = v20;
  }

  if (v37 != v39)
  {
    v21 = result;
    free(v37);
    return v21;
  }

  return result;
}

__n128 llvm::SmallVectorTemplateBase<mlir::OpAsmParser::Argument,true>::push_back(unint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *a1;
  if (v2 >= *(a1 + 3))
  {
    if (v3 > a2 || v3 + (v2 << 6) <= a2)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  v4 = v3 + (*(a1 + 2) << 6);
  result = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v7;
  *v4 = result;
  *(v4 + 16) = v6;
  ++*(a1 + 2);
  return result;
}

uint64_t mlir::OpAsmParser::parseAssignmentList(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 824))(a1);
  if ((v2 & 0x100) == 0)
  {
    v3 = (*(*a1 + 40))(a1);
    v13 = "expected '('";
    v14 = 259;
    (*(*a1 + 24))(v15, a1, v3, &v13);
    v2 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v15);
    if (v15[0])
    {
      mlir::InFlightDiagnostic::report(v15);
    }

    if (v23 == 1)
    {
      if (v22 != &v23)
      {
        free(v22);
      }

      v4 = __p;
      if (__p)
      {
        v5 = v21;
        v6 = __p;
        if (v21 != __p)
        {
          do
          {
            v5 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v5 - 1);
          }

          while (v5 != v4);
          v6 = __p;
        }

        v21 = v4;
        operator delete(v6);
      }

      v7 = v18;
      if (v18)
      {
        v8 = v19;
        v9 = v18;
        if (v19 != v18)
        {
          do
          {
            v11 = *--v8;
            v10 = v11;
            *v8 = 0;
            if (v11)
            {
              MEMORY[0x259C63150](v10, 0x1000C8077774924);
            }
          }

          while (v8 != v7);
          v9 = v18;
        }

        v19 = v7;
        operator delete(v9);
      }

      if (v16 != &v17)
      {
        free(v16);
      }
    }
  }

  return v2;
}

uint64_t mlir::mps::serialization::FromElementsOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "from_elements", 13);
}

uint64_t mlir::mps::serialization::FromElementsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = mlir::OperationState::addOperands(a2, a4, a5);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = a3;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::mps::serialization::FromElementsOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v9 = a4;
  v5 = mlir::ValueRange::dereference_iterator(&v10, 0);
  v6 = mlir::RankedTensorType::get(&v9, 1, *(v5 + 8) & 0xFFFFFFFFFFFFFFF8, 0);
  result = mlir::OperationState::addOperands(a2, v10, v11);
  v8 = *(a2 + 72);
  if (v8 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v8) = v6;
  ++*(a2 + 72);
  return result;
}

uint64_t mlir::mps::serialization::ExtractOp::getAsmResultNames(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, const char *, uint64_t), uint64_t a3)
{
  if (*(*a1 + 36))
  {
    v4 = *a1 - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);

  return a2(a3, NextResultAtOffset, "extracted", 9);
}

unint64_t mlir::mps::serialization::detail::ConditionOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::serialization::detail::ConditionOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "SCFDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_257388CED + v6;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_257388CED + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_257388CED + v5))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::mps::serialization::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a3;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  return mlir::OperationState::addOperands(a2, a4, a5);
}

unint64_t mlir::mps::serialization::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

unint64_t mlir::mps::serialization::ConditionOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

BOOL mlir::mps::serialization::__mlir_ods_local_type_constraint_MPSSerializationOps1(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v31 = a2;
  v9 = 1;
  if (!mlir::Type::isSignlessInteger(&v31, 1))
  {
    v30 = 261;
    v29[0] = a3;
    v29[1] = a4;
    mlir::Operation::emitOpError(v34, a1, v29);
    if (v34[0])
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = " #";
      v33 = 2;
      if (v36 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v36 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v35 + 24 * v36;
      v11 = v32;
      *(v10 + 2) = v33;
      *v10 = v11;
      v12 = ++v36;
      if (v34[0])
      {
        LODWORD(v32) = 5;
        *(&v32 + 1) = a5;
        if (v12 >= v37)
        {
          if (v35 > &v32 || v35 + 24 * v12 <= &v32)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v35 + 24 * v36;
        v14 = v32;
        *(v13 + 2) = v33;
        *v13 = v14;
        v15 = ++v36;
        if (v34[0])
        {
          LODWORD(v32) = 3;
          *(&v32 + 1) = " must be 1-bit signless integer, but got ";
          v33 = 41;
          if (v15 >= v37)
          {
            if (v35 > &v32 || v35 + 24 * v15 <= &v32)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v16 = v35 + 24 * v36;
          v17 = v32;
          *(v16 + 2) = v33;
          *v16 = v17;
          ++v36;
          if (v34[0])
          {
            mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
            if (v36 >= v37)
            {
              if (v35 > &v32 || v35 + 24 * v36 <= &v32)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v18 = v35 + 24 * v36;
            v19 = v32;
            *(v18 + 2) = v33;
            *v18 = v19;
            ++v36;
          }
        }
      }
    }

    v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
    if (v34[0])
    {
      mlir::InFlightDiagnostic::report(v34);
    }

    if (v44 == 1)
    {
      if (v43 != &v44)
      {
        free(v43);
      }

      v20 = __p;
      if (__p)
      {
        v21 = v42;
        v22 = __p;
        if (v42 != __p)
        {
          do
          {
            v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
          }

          while (v21 != v20);
          v22 = __p;
        }

        v42 = v20;
        operator delete(v22);
      }

      v23 = v39;
      if (v39)
      {
        v24 = v40;
        v25 = v39;
        if (v40 != v39)
        {
          do
          {
            v27 = *--v24;
            v26 = v27;
            *v24 = 0;
            if (v27)
            {
              MEMORY[0x259C63150](v26, 0x1000C8077774924);
            }
          }

          while (v24 != v23);
          v25 = v39;
        }

        v40 = v23;
        operator delete(v25);
      }

      if (v35 != &v38)
      {
        free(v35);
      }
    }
  }

  return v9;
}

uint64_t mlir::mps::serialization::ConditionOp::parse(mlir::mps::serialization::ConditionOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3, uint64_t a4)
{
  v17[16] = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v15 = v17;
  v16 = 0x400000000;
  v13[0] = &v14;
  v13[1] = 0x100000000;
  if ((*(*this + 280))(this, a2, a3, a4) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 704))(this, v11, 1)) && ((*(*this + 296))(this) & 1) != 0 && ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112)) && (v6 = (*(*this + 40))(this), ((*(*this + 720))(this, &v15, 0, 1, 0xFFFFFFFFLL)) && (!v16 || ((*(*this + 104))(this) & 1) != 0 && (mlir::AsmParser::parseTypeList(this, v13)) && (v7 = (*(*this + 32))(this), IntegerType = mlir::Builder::getIntegerType(v7, 1), ((*(*this + 728))(this, v11, IntegerType, a2 + 16)))
  {
    v9 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, &v15, v13, v6, a2 + 16) & 1;
  }

  else
  {
    v9 = 0;
  }

  if (v13[0] != &v14)
  {
    free(v13[0]);
  }

  if (v15 != v17)
  {
    free(v15);
  }

  return v9;
}

void mlir::mps::serialization::ConditionOp::print(mlir::Operation **this, mlir::OpAsmPrinter *a2)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 16))(a2);
  v5 = v4[4];
  if (v4[3] == v5)
  {
    llvm::raw_ostream::write(v4, "(", 1uLL);
  }

  else
  {
    *v5 = 40;
    ++v4[4];
  }

  (*(*a2 + 160))(a2, *(*(*this + 9) + 24));
  v6 = (*(*a2 + 16))(a2);
  v7 = v6[4];
  if (v6[3] == v7)
  {
    llvm::raw_ostream::write(v6, ")", 1uLL);
  }

  else
  {
    *v7 = 41;
    ++v6[4];
  }

  v43 = v45;
  v44 = 0x200000000;
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::DictionaryAttr::getValue(&AttrDictionary);
  (*(*a2 + 192))(a2, Value, v9, v43, v44);
  if ((*(*this + 46) & 0x80) != 0 && *(*this + 17) == 1)
  {
    goto LABEL_28;
  }

  v10 = (*(*a2 + 16))(a2);
  v11 = *(v10 + 4);
  if (v11 >= *(v10 + 3))
  {
    llvm::raw_ostream::write(v10, 32);
  }

  else
  {
    *(v10 + 4) = v11 + 1;
    *v11 = 32;
  }

  v12 = *this;
  if ((*(*this + 46) & 0x80) == 0)
  {
    v13 = 0;
    v14 = -1;
    v15 = (*(*a2 + 16))(a2);
LABEL_14:
    v16 = v15;
    (*(*a2 + 160))(a2, *(v13 + 56));
    v17 = v14 - 1;
    if (v17)
    {
      v31 = (v13 + 88);
      do
      {
        v33 = v16[4];
        if (v16[3] - v33 > 1uLL)
        {
          *v33 = 8236;
          v16[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v16, ", ", 2uLL);
        }

        v32 = *v31;
        v31 += 4;
        (*(*a2 + 160))(a2, v32);
        --v17;
      }

      while (v17);
    }

    goto LABEL_15;
  }

  v13 = *(v12 + 9);
  v14 = *(v12 + 17) - 1;
  v15 = (*(*a2 + 16))(a2);
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_15:
  v18 = (*(*a2 + 16))(a2);
  v19 = *(v18 + 4);
  if (v19 >= *(v18 + 3))
  {
    llvm::raw_ostream::write(v18, 32);
  }

  else
  {
    *(v18 + 4) = v19 + 1;
    *v19 = 32;
  }

  v20 = (*(*a2 + 16))(a2);
  v21 = v20[4];
  if (v20[3] == v21)
  {
    llvm::raw_ostream::write(v20, ":", 1uLL);
  }

  else
  {
    *v21 = 58;
    ++v20[4];
  }

  v22 = (*(*a2 + 16))(a2);
  v23 = *(v22 + 4);
  if (v23 >= *(v22 + 3))
  {
    llvm::raw_ostream::write(v22, 32);
  }

  else
  {
    *(v22 + 4) = v23 + 1;
    *v23 = 32;
  }

  v24 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v25 = *(v24 + 17);
    v26 = *(v24 + 9);
    v27 = v25 - 1;
  }

  else
  {
    v26 = 0;
    v27 = -1;
  }

  v39[0] = v26 + 32;
  v39[1] = v27;
  mlir::OperandRange::getTypes(v39, &AttrDictionary);
  v28 = v41;
  v29 = v42;
  if (v41 != v42)
  {
    v30 = AttrDictionary + 32 * v41;
    (*(*a2 + 32))(a2, *(*(v30 + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v28 + 1 != v29)
    {
      v34 = ~v28 + v29;
      v35 = (v30 + 56);
      do
      {
        v37 = (*(*a2 + 16))(a2);
        v38 = v37[4];
        if (v37[3] - v38 > 1uLL)
        {
          *v38 = 8236;
          v37[4] += 2;
        }

        else
        {
          llvm::raw_ostream::write(v37, ", ", 2uLL);
        }

        v36 = *v35;
        v35 += 4;
        (*(*a2 + 32))(a2, *(v36 + 8) & 0xFFFFFFFFFFFFFFF8);
        --v34;
      }

      while (v34);
    }
  }

LABEL_28:
  if (v43 != v45)
  {
    free(v43);
  }
}

unint64_t mlir::mps::serialization::detail::ForOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::serialization::detail::ForOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "MPSBytecodeDialectInterfaceE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_257388CC0 + v6;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_257388CC0 + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_257388CC0 + v5))
  {
    v31 = (a3 - 3) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 4));
}

uint64_t mlir::mps::serialization::ForOp::verifyInvariantsImpl(mlir::Operation **this)
{
  if ((mlir::mps::serialization::__mlir_ods_local_type_constraint_MPSSerializationOps3(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::serialization::__mlir_ods_local_type_constraint_MPSSerializationOps3(*this, *(*(*(*this + 9) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0 || (mlir::mps::serialization::__mlir_ods_local_type_constraint_MPSSerializationOps3(*this, *(*(*(*this + 9) + 88) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  v2 = *this;
  v3 = *(*this + 9);
  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  return mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(v2, ((v2 + 16 * ((*(v2 + 11) >> 23) & 1) + ((*(v2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10), "region", 6, 0) & 1;
}

uint64_t mlir::mps::serialization::__mlir_ods_local_type_constraint_MPSSerializationOps3(mlir::Operation *a1, uint64_t a2, void **a3, void **a4, unsigned int a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v31 = a2;
  if (mlir::Type::isSignlessIntOrIndex(&v31))
  {
    return 1;
  }

  v30 = 261;
  v29[0] = a3;
  v29[1] = a4;
  mlir::Operation::emitOpError(v34, a1, v29);
  if (v34[0])
  {
    LODWORD(v32) = 3;
    *(&v32 + 1) = " #";
    v33 = 2;
    if (v36 >= v37)
    {
      if (v35 > &v32 || v35 + 24 * v36 <= &v32)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v35 + 24 * v36;
    v11 = v32;
    *(v10 + 2) = v33;
    *v10 = v11;
    v12 = ++v36;
    if (v34[0])
    {
      LODWORD(v32) = 5;
      *(&v32 + 1) = a5;
      if (v12 >= v37)
      {
        if (v35 > &v32 || v35 + 24 * v12 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v35 + 24 * v36;
      v14 = v32;
      *(v13 + 2) = v33;
      *v13 = v14;
      v15 = ++v36;
      if (v34[0])
      {
        LODWORD(v32) = 3;
        *(&v32 + 1) = " must be signless integer or index, but got ";
        v33 = 44;
        if (v15 >= v37)
        {
          if (v35 > &v32 || v35 + 24 * v15 <= &v32)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v16 = v35 + 24 * v36;
        v17 = v32;
        *(v16 + 2) = v33;
        *v16 = v17;
        ++v36;
        if (v34[0])
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v32, v31);
          if (v36 >= v37)
          {
            if (v35 > &v32 || v35 + 24 * v36 <= &v32)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v18 = v35 + 24 * v36;
          v19 = v32;
          *(v18 + 2) = v33;
          *v18 = v19;
          ++v36;
        }
      }
    }
  }

  v9 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v34);
  if (v34[0])
  {
    mlir::InFlightDiagnostic::report(v34);
  }

  if (v44 == 1)
  {
    if (v43 != &v44)
    {
      free(v43);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v42;
      v22 = __p;
      if (v42 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v42 = v20;
      operator delete(v22);
    }

    v23 = v39;
    if (v39)
    {
      v24 = v40;
      v25 = v39;
      if (v40 != v39)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            MEMORY[0x259C63150](v26, 0x1000C8077774924);
          }
        }

        while (v24 != v23);
        v25 = v39;
      }

      v40 = v23;
      operator delete(v25);
    }

    if (v35 != &v38)
    {
      free(v35);
    }
  }

  return v9;
}

BOOL mlir::mps::serialization::IfOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v46 = *MEMORY[0x277D85DE8];
  if (!mlir::mps::serialization::__mlir_ods_local_type_constraint_MPSSerializationOps1(*this, *(*(*(*this + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0))
  {
    return 0;
  }

  v2 = *this;
  v3 = *(*this + 9);
  if (*(*this + 9))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      mlir::detail::OpResultImpl::getNextResultAtOffset(v4, i);
    }

    v2 = *this;
  }

  if ((mlir::ODIE::Compiler::CoreML::__mlir_ods_local_region_constraint_CoreMLOps1(v2, ((v2 + 16 * ((*(v2 + 11) >> 23) & 1) + ((*(v2 + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v2 + 10), "thenRegion", 10, 0) & 1) == 0)
  {
    return 0;
  }

  v6 = *this;
  v7 = ((*this + 16 * ((*(*this + 11) >> 23) & 1) + ((*(*this + 11) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(*this + 10);
  v8 = v7 + 24;
  v9 = *(v7 + 32);
  if (v9 == v8 || *(v9 + 8) == v8)
  {
    return 1;
  }

  v30 = "region #";
  v31 = 259;
  mlir::Operation::emitOpError(&v34, v6, &v30);
  if (v34)
  {
    LODWORD(v27) = 5;
    *(&v27 + 1) = 1;
    if (v37 >= v38)
    {
      if (v36 > &v27 || v36 + 24 * v37 <= &v27)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v10 = v36 + 24 * v37;
    v11 = v27;
    *(v10 + 2) = v28;
    *v10 = v11;
    ++v37;
    v12 = v34 == 0;
  }

  else
  {
    v12 = 1;
  }

  v26 = 1283;
  v25[0] = " ('";
  v25[2] = "elseRegion";
  v25[3] = 10;
  *&v27 = v25;
  v28 = "') ";
  v29 = 770;
  if (!v12)
  {
    mlir::Diagnostic::operator<<(&v35, &v27);
    if (v34)
    {
      LODWORD(v32) = 3;
      *(&v32 + 1) = "failed to verify constraint: region with at most 1 blocks";
      v33 = 57;
      if (v37 >= v38)
      {
        if (v36 > &v32 || v36 + 24 * v37 <= &v32)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v13 = v36 + 24 * v37;
      v14 = v32;
      *(v13 + 2) = v33;
      *v13 = v14;
      ++v37;
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v34);
  if (v34)
  {
    mlir::InFlightDiagnostic::report(&v34);
  }

  if (v45 == 1)
  {
    if (v44 != &v45)
    {
      free(v44);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v43;
      v18 = __p;
      if (v43 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v43 = v16;
      operator delete(v18);
    }

    v19 = v40;
    if (v40)
    {
      v20 = v41;
      v21 = v40;
      if (v41 != v40)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v40;
      }

      v41 = v19;
      operator delete(v21);
    }

    if (v36 != &v39)
    {
      free(v36);
    }
  }

  return v15;
}

unint64_t mlir::mps::serialization::detail::ExtractOpGenericAdaptorBase::getODSOperandIndexAndLength(mlir::mps::serialization::detail::ExtractOpGenericAdaptorBase *this, unsigned int a2, int a3, double a4, int32x4_t a5)
{
  if (!a2)
  {
    v5 = 0;
    v7 = 0;
    goto LABEL_16;
  }

  v5 = a2;
  if (a2 < 4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  if (a2 >= 0x20)
  {
    v8 = 0uLL;
    v9 = "SCFDialectE";
    v10 = 0uLL;
    v6 = a2 & 0xFFFFFFE0;
    v11 = v6;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    do
    {
      v18 = *v9[-2].i8;
      v19 = vmovl_u8(*v18.i8);
      v20 = vmovl_high_u8(v18);
      v21 = vmovl_u8(*v9);
      v22 = vmovl_high_u8(*v9->i8);
      v13 = vaddw_high_u16(v13, v20);
      v12 = vaddw_u16(v12, *v20.i8);
      v10 = vaddw_high_u16(v10, v19);
      v8 = vaddw_u16(v8, *v19.i8);
      v17 = vaddw_high_u16(v17, v22);
      v16 = vaddw_u16(v16, *v22.i8);
      v15 = vaddw_high_u16(v15, v21);
      v14 = vaddw_u16(v14, *v21.i8);
      v9 += 4;
      v11 -= 32;
    }

    while (v11);
    a5 = vaddq_s32(vaddq_s32(v15, v10), vaddq_s32(v17, v13));
    v7 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v14, v8), vaddq_s32(v16, v12)), a5));
    if (v6 == a2)
    {
      goto LABEL_16;
    }

    if ((a2 & 0x1C) == 0)
    {
LABEL_14:
      v28 = &dword_257388CED + v6;
      v29 = a2 - v6;
      do
      {
        v30 = *v28++;
        v7 += v30;
        --v29;
      }

      while (v29);
      goto LABEL_16;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v23 = v6;
  v6 = a2 & 0xFFFFFFFC;
  v24 = v7;
  v25 = (&dword_257388CED + v23);
  v26 = v23 - v6;
  do
  {
    v27 = *v25++;
    a5.i32[0] = v27;
    a5.i64[0] = vmovl_u8(*a5.i8).u64[0];
    v24 = vaddw_u16(v24, *a5.i8);
    v26 += 4;
  }

  while (v26);
  v7 = vaddvq_s32(v24);
  if (v6 != a2)
  {
    goto LABEL_14;
  }

LABEL_16:
  v31 = 0x100000000;
  if (*(&dword_257388CED + v5))
  {
    v31 = (a3 - 1) << 32;
  }

  return v31 | (a2 + v7 * (a3 - 2));
}

uint64_t mlir::mps::serialization::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = a4;
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  result = mlir::OperationState::addOperands(a2, a5, a6);
  v11 = *(a2 + 72);
  if (v11 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
  return result;
}

void mlir::mps::serialization::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v19 = a3;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, a4, a5);
  __src = v24;
  v23 = 0x200000000;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v9 = mlir::RegionRange::RegionRange(&v20, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::serialization::ExtractOp::inferReturnTypes(v9, v10, v11, v21[0], v21[1], v12, v13, v14, v17, v18, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = v23;
  v16 = *(a2 + 72);
  if (v16 + v23 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v23)
  {
    memcpy((*(a2 + 64) + 8 * v16), __src, 8 * v23);
    LODWORD(v16) = *(a2 + 72);
  }

  *(a2 + 72) = v16 + v15;
  if (__src != v24)
  {
    free(__src);
  }
}

uint64_t mlir::mps::serialization::ExtractOp::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v28[0] = a4;
  v28[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (!*(a11 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      bzero(*a11, 8uLL);
    }

    *(a11 + 8) = 1;
  }

  v12 = (*(mlir::ValueRange::dereference_iterator(v28, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = *v12;
  {
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v25 = v13;
    v26 = v12;
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v12 = v26;
    v14 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v15 = *(v25 + 8);
    v16 = *(v25 + 16);
    if (!v16)
    {
      goto LABEL_20;
    }
  }

  v17 = v15;
  v18 = v16;
  do
  {
    v19 = v18 >> 1;
    v20 = &v17[2 * (v18 >> 1)];
    v22 = *v20;
    v21 = v20 + 2;
    v18 += ~(v18 >> 1);
    if (v22 < v14)
    {
      v17 = v21;
    }

    else
    {
      v18 = v19;
    }
  }

  while (v18);
  if (v17 != &v15[2 * v16] && *v17 == v14)
  {
    v23 = v17[1];
    goto LABEL_21;
  }

LABEL_20:
  v23 = 0;
LABEL_21:
  v27[0] = v12;
  v27[1] = v23;
  **a11 = mlir::ShapedType::getElementType(v27);
  return 1;
}

unint64_t mlir::mps::serialization::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v16 = a5;
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  result = mlir::OperationState::addOperands(a2, a6, a7);
  v13 = *(a2 + 72);
  if (a4 + v13 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v14 = 0;
    v15 = *(a2 + 64) + 8 * v13;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v14);
      *(v15 + 8 * v14++) = result;
    }

    while (a4 != v14);
    LODWORD(v13) = *(a2 + 72);
  }

  *(a2 + 72) = v13 + a4;
  return result;
}

unint64_t mlir::mps::serialization::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  result = mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v14 = *(a2 + 120);
  if (a8 + v14 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a8)
  {
    result = memcpy((*(a2 + 112) + 16 * v14), a7, 16 * a8);
    LODWORD(v14) = *(a2 + 120);
  }

  *(a2 + 120) = v14 + a8;
  v15 = *(a2 + 72);
  if (a4 + v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a4)
  {
    v16 = 0;
    v17 = *(a2 + 64) + 8 * v15;
    do
    {
      result = mlir::TypeRange::dereference_iterator(a3, v16);
      *(v17 + 8 * v16++) = result;
    }

    while (a4 != v16);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + a4;
  return result;
}

void mlir::mps::serialization::ExtractOp::build(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v26[2] = *MEMORY[0x277D85DE8];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v11 = *(a2 + 120);
  if (a6 + v11 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v11), a5, 16 * a6);
    LODWORD(v11) = *(a2 + 120);
  }

  *(a2 + 120) = v11 + a6;
  __src = v26;
  v25 = 0x200000000;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = mlir::RegionRange::RegionRange(&v23, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::serialization::ExtractOp::inferReturnTypes(v13, v14, v15, a3, a4, v16, v17, v18, v21, v22, &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v19 = v25;
  v20 = *(a2 + 72);
  if (v20 + v25 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (v25)
  {
    memcpy((*(a2 + 64) + 8 * v20), __src, 8 * v25);
    LODWORD(v20) = *(a2 + 72);
  }

  *(a2 + 72) = v20 + v19;
  if (__src != v26)
  {
    free(__src);
  }
}

BOOL mlir::mps::serialization::ExtractOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v106 = *MEMORY[0x277D85DE8];
  v1 = *this;
  v2 = *(*(*(v1 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  v3 = *v2;
  if (*(*v2 + 136) == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    {
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v3 + 8);
      v26 = *(v3 + 16);
      if (v26)
      {
LABEL_29:
        v27 = v25;
        v28 = v26;
        v4 = this;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[2 * (v28 >> 1)];
          v32 = *v30;
          v31 = v30 + 2;
          v28 += ~(v28 >> 1);
          if (v32 < v24)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
        if (v27 != &v25[2 * v26] && *v27 == v24)
        {
          v34 = v27[1];
          goto LABEL_59;
        }

LABEL_57:
        v34 = 0;
LABEL_59:
        v94 = v2;
        v95 = v34;
        mlir::ShapedType::getElementType(&v94);
        goto LABEL_60;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v3 + 8);
      v26 = *(v3 + 16);
      if (v26)
      {
        goto LABEL_29;
      }
    }

    v4 = this;
    goto LABEL_57;
  }

  v91 = 261;
  v89 = "operand";
  v90 = 7;
  mlir::Operation::emitOpError(&v94, v1, &v89);
  v4 = this;
  if (v94)
  {
    LODWORD(v92) = 3;
    *(&v92 + 1) = " #";
    v93 = 2;
    if (v97 >= v98)
    {
      if (v96 > &v92 || v96 + 24 * v97 <= &v92)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v5 = v96 + 24 * v97;
    v6 = v92;
    *(v5 + 2) = v93;
    *v5 = v6;
    v7 = ++v97;
    if (v94)
    {
      LODWORD(v92) = 5;
      *(&v92 + 1) = 0;
      if (v7 >= v98)
      {
        if (v96 > &v92 || v96 + 24 * v7 <= &v92)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v8 = v96 + 24 * v97;
      v9 = v92;
      *(v8 + 2) = v93;
      *v8 = v9;
      v10 = ++v97;
      if (v94)
      {
        LODWORD(v92) = 3;
        *(&v92 + 1) = " must be ranked tensor of any type values, but got ";
        v93 = 51;
        if (v10 >= v98)
        {
          if (v96 > &v92 || v96 + 24 * v10 <= &v92)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v11 = v96 + 24 * v97;
        v12 = v92;
        *(v11 + 2) = v93;
        *v11 = v12;
        ++v97;
        if (v94)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v92, v2);
          if (v97 >= v98)
          {
            if (v96 > &v92 || v96 + 24 * v97 <= &v92)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v13 = v96 + 24 * v97;
          v14 = v92;
          *(v13 + 2) = v93;
          *v13 = v14;
          ++v97;
        }
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
  if (v94)
  {
    mlir::InFlightDiagnostic::report(&v94);
  }

  if (v105 == 1)
  {
    if (v104 != &v105)
    {
      free(v104);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v103;
      v18 = __p;
      if (v103 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v103 = v16;
      operator delete(v18);
    }

    v19 = v100;
    if (v100)
    {
      v20 = v101;
      v21 = v100;
      if (v101 != v100)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            MEMORY[0x259C63150](v22, 0x1000C8077774924);
          }
        }

        while (v20 != v19);
        v21 = v100;
      }

      v101 = v19;
      operator delete(v21);
    }

    if (v96 != v99)
    {
      free(v96);
    }
  }

  if (!v15)
  {
    return 0;
  }

LABEL_60:
  v35 = *v4;
  if ((*(*v4 + 46) & 0x80) == 0)
  {
    v37 = -1;
    v38 = 32;
LABEL_63:
    v39 = 0;
    v40 = 1;
    while (1)
    {
      v41 = *(*(v38 + 32 * v39 + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
      if (*(*v41 + 136) != &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
      {
        v42 = *v4;
        v91 = 261;
        v89 = "operand";
        v90 = 7;
        mlir::Operation::emitOpError(&v94, v42, &v89);
        if (v94)
        {
          LODWORD(v92) = 3;
          *(&v92 + 1) = " #";
          v93 = 2;
          if (v97 >= v98)
          {
            if (v96 > &v92 || v96 + 24 * v97 <= &v92)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v43 = v96 + 24 * v97;
          v44 = v92;
          *(v43 + 2) = v93;
          *v43 = v44;
          v45 = ++v97;
          if (v94)
          {
            LODWORD(v92) = 5;
            *(&v92 + 1) = v40;
            if (v45 >= v98)
            {
              if (v96 > &v92 || v96 + 24 * v45 <= &v92)
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            v46 = v96 + 24 * v97;
            v47 = v92;
            *(v46 + 2) = v93;
            *v46 = v47;
            v48 = ++v97;
            if (v94)
            {
              LODWORD(v92) = 3;
              *(&v92 + 1) = " must be variadic of index, but got ";
              v93 = 36;
              if (v48 >= v98)
              {
                if (v96 > &v92 || v96 + 24 * v48 <= &v92)
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              v49 = v96 + 24 * v97;
              v50 = v92;
              *(v49 + 2) = v93;
              *v49 = v50;
              ++v97;
              if (v94)
              {
                mlir::DiagnosticArgument::DiagnosticArgument(&v92, v41);
                if (v97 >= v98)
                {
                  if (v96 > &v92 || v96 + 24 * v97 <= &v92)
                  {
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                v51 = v96 + 24 * v97;
                v52 = v92;
                *(v51 + 2) = v93;
                *v51 = v52;
                ++v97;
              }
            }
          }
        }

        v53 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
        if (v94)
        {
          mlir::InFlightDiagnostic::report(&v94);
        }

        if (v105 == 1)
        {
          if (v104 != &v105)
          {
            free(v104);
          }

          v54 = __p;
          if (__p)
          {
            v55 = v103;
            v56 = __p;
            if (v103 != __p)
            {
              do
              {
                v55 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v55 - 1);
              }

              while (v55 != v54);
              v56 = __p;
            }

            v103 = v54;
            operator delete(v56);
          }

          v57 = v100;
          if (v100)
          {
            v58 = v101;
            v59 = v100;
            if (v101 != v100)
            {
              do
              {
                v61 = *--v58;
                v60 = v61;
                *v58 = 0;
                if (v61)
                {
                  MEMORY[0x259C63150](v60, 0x1000C8077774924);
                }
              }

              while (v58 != v57);
              v59 = v100;
            }

            v101 = v57;
            operator delete(v59);
          }

          v4 = this;
          if (v96 != v99)
          {
            free(v96);
          }
        }

        if (!v53)
        {
          return 0;
        }
      }

      ++v40;
      if (++v39 == v37)
      {
        v35 = *v4;
        goto LABEL_113;
      }
    }
  }

  v36 = *(v35 + 17);
  v37 = v36 - 1;
  if (v36 != 1)
  {
    v38 = *(v35 + 9) + 32;
    goto LABEL_63;
  }

LABEL_113:
  v62 = *(v35 + 9);
  v63 = v35 - 16;
  if (v62)
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  mlir::detail::OpResultImpl::getNextResultAtOffset(v64, 0);
  v65 = (*(*(*(*v4 + 9) + 24) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v65)
  {
    goto LABEL_130;
  }

  v66 = *v65;
  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v67 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v68 = *(v66 + 8);
    v69 = *(v66 + 16);
    if (v69)
    {
      goto LABEL_119;
    }

LABEL_128:
    v4 = this;
LABEL_130:
    v76 = 0;
    goto LABEL_131;
  }

  v67 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v68 = *(v66 + 8);
  v69 = *(v66 + 16);
  if (!v69)
  {
    goto LABEL_128;
  }

LABEL_119:
  v70 = v68;
  v71 = v69;
  v4 = this;
  do
  {
    v72 = v71 >> 1;
    v73 = &v70[2 * (v71 >> 1)];
    v75 = *v73;
    v74 = v73 + 2;
    v71 += ~(v71 >> 1);
    if (v75 < v67)
    {
      v70 = v74;
    }

    else
    {
      v71 = v72;
    }
  }

  while (v71);
  if (v70 == &v68[2 * v69] || *v70 != v67)
  {
    goto LABEL_130;
  }

  v76 = v70[1];
LABEL_131:
  v94 = v65;
  v95 = v76;
  ElementType = mlir::ShapedType::getElementType(&v94);
  if (*(*v4 + 9))
  {
    v78 = *v4 - 16;
  }

  else
  {
    v78 = 0;
  }

  if (ElementType == (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v78, 0) + 8) & 0xFFFFFFFFFFFFFFF8))
  {
    return 1;
  }

  v89 = "failed to verify that result type matches element type of tensor";
  v91 = 259;
  mlir::OpState::emitOpError(v4, &v89, &v94);
  v33 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v94);
  if (v94)
  {
    mlir::InFlightDiagnostic::report(&v94);
  }

  if (v105 == 1)
  {
    if (v104 != &v105)
    {
      free(v104);
    }

    v79 = __p;
    if (__p)
    {
      v80 = v103;
      v81 = __p;
      if (v103 != __p)
      {
        do
        {
          v80 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v80 - 1);
        }

        while (v80 != v79);
        v81 = __p;
      }

      v103 = v79;
      operator delete(v81);
    }

    v82 = v100;
    if (v100)
    {
      v83 = v101;
      v84 = v100;
      if (v101 != v100)
      {
        do
        {
          v86 = *--v83;
          v85 = v86;
          *v83 = 0;
          if (v86)
          {
            MEMORY[0x259C63150](v85, 0x1000C8077774924);
          }
        }

        while (v83 != v82);
        v84 = v100;
      }

      v101 = v82;
      operator delete(v84);
    }

    if (v96 != v99)
    {
      free(v96);
    }
  }

  return v33;
}

BOOL mlir::mps::serialization::ExtractOp::parse(mlir::mps::serialization::ExtractOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v42[16] = *MEMORY[0x277D85DE8];
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  v35[0] = v36;
  v35[1] = 1;
  v40 = v42;
  v41 = 0x400000000;
  v33[1] = 1;
  v34 = 0;
  v33[0] = &v34;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 704))(this, v36, 1) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*this + 312))(this) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*this + 40))(this);
  if (((*(*this + 720))(this, &v40, 0, 1, 0xFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*this + 328))(this) & 1) == 0)
  {
    goto LABEL_31;
  }

  (*(*this + 40))(this);
  if (((*(*this + 488))(this, a2 + 112) & 1) == 0)
  {
    goto LABEL_31;
  }

  if (((*(*this + 104))(this) & 1) == 0)
  {
    goto LABEL_31;
  }

  v38 = 0;
  if (!mlir::AsmParser::parseType<mlir::RankedTensorType>(this, &v38))
  {
    goto LABEL_31;
  }

  v6 = v38;
  v34 = v38;
  v32 = v38;
  v7 = *v38;
  if (*(*v38 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    v8 = (*(*this + 16))(this);
    v31 = 257;
    (*(*this + 24))(&v38, this, v8, v30);
    mlir::InFlightDiagnostic::operator<<<char const(&)[29]>(&v38, "'tensor' must be ranked tensor of any type values, but got ");
    mlir::InFlightDiagnostic::append<mlir::Type const&>(v9, &v32);
    v11 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v10);
    mlir::InFlightDiagnostic::~InFlightDiagnostic(&v38);
    v12 = v40;
    if (v40 == v42)
    {
      return v11;
    }

    goto LABEL_33;
  }

  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_20:
    v15 = 0;
    v16 = v14;
    goto LABEL_21;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v14 = *(v7 + 8);
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_13:
  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
LABEL_21:
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
  }

  else
  {
    v22 = 0;
  }

  v38 = v6;
  v39 = v22;
  mlir::ShapedType::getElementType(&v38);
  v23 = (*(*this + 32))(this);
  IndexType = mlir::Builder::getIndexType(v23, v24);
  v38 = mlir::TensorType::operator mlir::ShapedType(v33[0]);
  v39 = v26;
  v30[0] = mlir::ShapedType::getElementType(&v38);
  mlir::OperationState::addTypes(a2, v30, 1);
  if (mlir::OpAsmParser::resolveOperands<llvm::ArrayRef<mlir::OpAsmParser::UnresolvedOperand> &,llvm::ArrayRef<mlir::Type> &>(this, v35, v33, v5, a2 + 16))
  {
    if (!v41)
    {
      v11 = 1;
      v12 = v40;
      if (v40 == v42)
      {
        return v11;
      }

      goto LABEL_33;
    }

    v27 = v40;
    v28 = 32 * v41;
    while (((*(*this + 728))(this, v27, IndexType, a2 + 16) & 1) != 0)
    {
      v27 += 4;
      v11 = 1;
      v28 -= 32;
      if (!v28)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_31:
  v11 = 0;
LABEL_32:
  v12 = v40;
  if (v40 != v42)
  {
LABEL_33:
    free(v12);
  }

  return v11;
}

BOOL mlir::mps::serialization::FromElementsOp::verifyInvariantsImpl(mlir::Operation **this)
{
  v123 = *MEMORY[0x277D85DE8];
  if (*(*this + 9))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  v4 = *this;
  v5 = (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  if (*(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_5;
  }

  {
    v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v27 = *(v6 + 8);
    v28 = *(v6 + 16);
    if (!v28)
    {
      goto LABEL_60;
    }
  }

  else
  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v26 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v27 = *(v6 + 8);
    v28 = *(v6 + 16);
    if (!v28)
    {
      goto LABEL_60;
    }
  }

  v29 = v27;
  v30 = v28;
  do
  {
    v31 = v30 >> 1;
    v32 = &v29[2 * (v30 >> 1)];
    v34 = *v32;
    v33 = v32 + 2;
    v30 += ~(v30 >> 1);
    if (v34 < v26)
    {
      v29 = v33;
    }

    else
    {
      v30 = v31;
    }
  }

  while (v30);
  if (v29 == &v27[2 * v28] || *v29 != v26)
  {
LABEL_60:
    v110 = v5;
    v111 = 0;
    if (!mlir::ShapedType::hasRank(&v110))
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

  v36 = v29[1];
  v110 = v5;
  v111 = v36;
  if (!mlir::ShapedType::hasRank(&v110))
  {
    goto LABEL_5;
  }

LABEL_63:
  Shape = mlir::ShapedType::getShape(&v110);
  if (!v38)
  {
LABEL_67:
    v40 = *v5;
    {
      v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v42 = *(v40 + 8);
      v43 = *(v40 + 16);
      if (!v43)
      {
        goto LABEL_80;
      }
    }

    v44 = v42;
    v45 = v43;
    do
    {
      v46 = v45 >> 1;
      v47 = &v44[2 * (v45 >> 1)];
      v49 = *v47;
      v48 = v47 + 2;
      v45 += ~(v45 >> 1);
      if (v49 < v41)
      {
        v44 = v48;
      }

      else
      {
        v45 = v46;
      }
    }

    while (v45);
    if (v44 != &v42[2 * v43] && *v44 == v41)
    {
      v50 = v44[1];
      goto LABEL_82;
    }

LABEL_80:
    v50 = 0;
LABEL_82:
    v104 = v5;
    v105 = v50;
    mlir::ShapedType::getElementType(&v104);
    goto LABEL_83;
  }

  v39 = 8 * v38;
  while (*Shape != 0x8000000000000000)
  {
    ++Shape;
    v39 -= 8;
    if (!v39)
    {
      goto LABEL_67;
    }
  }

LABEL_5:
  v107 = 261;
  v104 = "result";
  v105 = 6;
  mlir::Operation::emitOpError(&v110, v4, &v104);
  if (v110)
  {
    LODWORD(v108) = 3;
    *(&v108 + 1) = " #";
    v109 = 2;
    if (v114 >= v115)
    {
      if (v113 > &v108 || v113 + 24 * v114 <= &v108)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v7 = v113 + 24 * v114;
    v8 = v108;
    *(v7 + 2) = v109;
    *v7 = v8;
    v9 = ++v114;
    if (v110)
    {
      LODWORD(v108) = 5;
      *(&v108 + 1) = 0;
      if (v9 >= v115)
      {
        if (v113 > &v108 || v113 + 24 * v9 <= &v108)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v10 = v113 + 24 * v114;
      v11 = v108;
      *(v10 + 2) = v109;
      *v10 = v11;
      v12 = ++v114;
      if (v110)
      {
        LODWORD(v108) = 3;
        *(&v108 + 1) = " must be statically shaped tensor of any type values, but got ";
        v109 = 62;
        if (v12 >= v115)
        {
          if (v113 > &v108 || v113 + 24 * v12 <= &v108)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        v13 = v113 + 24 * v114;
        v14 = v108;
        *(v13 + 2) = v109;
        *v13 = v14;
        ++v114;
        if (v110)
        {
          mlir::DiagnosticArgument::DiagnosticArgument(&v108, v5);
          if (v114 >= v115)
          {
            if (v113 > &v108 || v113 + 24 * v114 <= &v108)
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          v15 = v113 + 24 * v114;
          v16 = v108;
          *(v15 + 2) = v109;
          *v15 = v16;
          ++v114;
        }
      }
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v110);
  if (v110)
  {
    mlir::InFlightDiagnostic::report(&v110);
  }

  if (v122 == 1)
  {
    if (v121 != &v122)
    {
      free(v121);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v120;
      v20 = __p;
      if (v120 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v120 = v18;
      operator delete(v20);
    }

    v21 = v117;
    if (v117)
    {
      v22 = v118;
      v23 = v117;
      if (v118 != v117)
      {
        do
        {
          v25 = *--v22;
          v24 = v25;
          *v22 = 0;
          if (v25)
          {
            MEMORY[0x259C63150](v24, 0x1000C8077774924);
          }
        }

        while (v22 != v21);
        v23 = v117;
      }

      v118 = v21;
      operator delete(v23);
    }

    if (v113 != v116)
    {
      free(v113);
    }
  }

  if (!v17)
  {
    return 0;
  }

LABEL_83:
  if (*(*this + 9))
  {
    v51 = *this - 16;
  }

  else
  {
    v51 = 0;
  }

  v52 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v51, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v52)
  {
    goto LABEL_99;
  }

  v53 = *v52;
  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v54 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v55 = *(v53 + 8);
    v56 = *(v53 + 16);
    if (v56)
    {
      goto LABEL_89;
    }

LABEL_99:
    v63 = 0;
    goto LABEL_100;
  }

  v54 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v55 = *(v53 + 8);
  v56 = *(v53 + 16);
  if (!v56)
  {
    goto LABEL_99;
  }

LABEL_89:
  v57 = v55;
  v58 = v56;
  do
  {
    v59 = v58 >> 1;
    v60 = &v57[2 * (v58 >> 1)];
    v62 = *v60;
    v61 = v60 + 2;
    v58 += ~(v58 >> 1);
    if (v62 < v54)
    {
      v57 = v61;
    }

    else
    {
      v58 = v59;
    }
  }

  while (v58);
  if (v57 == &v55[2 * v56] || *v57 != v54)
  {
    goto LABEL_99;
  }

  v63 = v57[1];
LABEL_100:
  *&v108 = v52;
  *(&v108 + 1) = v63;
  v64 = mlir::ShapedType::getShape(&v108);
  NumElements = mlir::ShapedType::getNumElements(v64, v65);
  if (*(*this + 9))
  {
    v67 = *this - 16;
  }

  else
  {
    v67 = 0;
  }

  v68 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v67, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (!v68)
  {
    goto LABEL_117;
  }

  v69 = *v68;
  {
    mlir::mps::serialization::ExtractOp::inferReturnTypes();
    v70 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v71 = *(v69 + 8);
    v72 = *(v69 + 16);
    if (v72)
    {
      goto LABEL_106;
    }

LABEL_117:
    v79 = 0;
    goto LABEL_118;
  }

  v70 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v71 = *(v69 + 8);
  v72 = *(v69 + 16);
  if (!v72)
  {
    goto LABEL_117;
  }

LABEL_106:
  v73 = v71;
  v74 = v72;
  do
  {
    v75 = v74 >> 1;
    v76 = &v73[2 * (v74 >> 1)];
    v78 = *v76;
    v77 = v76 + 2;
    v74 += ~(v74 >> 1);
    if (v78 < v70)
    {
      v73 = v77;
    }

    else
    {
      v74 = v75;
    }
  }

  while (v74);
  if (v73 == &v71[2 * v72] || *v73 != v70)
  {
    goto LABEL_117;
  }

  v79 = v73[1];
LABEL_118:
  v103[0] = v68;
  v103[1] = v79;
  ElementType = mlir::ShapedType::getElementType(v103);
  v110 = &v112;
  HIDWORD(v111) = 2;
  if (NumElements >= 3)
  {
    LODWORD(v111) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (NumElements)
  {
    v81 = vmovn_s64(vcgeq_u64(vdupq_n_s64(NumElements - 1), xmmword_2573686A0));
    if (v81.i8[0])
    {
      v112 = ElementType;
    }

    if (v81.i8[4])
    {
      v113 = ElementType;
    }
  }

  LODWORD(v111) = NumElements;
  v82 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v83 = *(v82 + 17);
    v84 = *(v82 + 9);
  }

  else
  {
    v84 = 0;
    v83 = 0;
  }

  v102[0] = v84;
  v102[1] = v83;
  mlir::OperandRange::getType(v102, &v104);
  if (v106 - v105 != v111)
  {
    v91 = 0;
    goto LABEL_137;
  }

  if (v111)
  {
    v85 = 8 * v111 - 8;
    v86 = &v104[4 * v105 + 3];
    v87 = v110;
    do
    {
      v88 = *v86;
      v86 += 4;
      v89 = v88[1];
      v90 = *v87++;
      v91 = v90 == (v89 & 0xFFFFFFFFFFFFFFF8);
      v92 = v90 != (v89 & 0xFFFFFFFFFFFFFFF8) || v85 == 0;
      v85 -= 8;
    }

    while (!v92);
LABEL_137:
    if (v110 == &v112)
    {
      goto LABEL_139;
    }

    goto LABEL_138;
  }

  v91 = 1;
  if (v110 != &v112)
  {
LABEL_138:
    free(v110);
  }

LABEL_139:
  if (v91)
  {
    return 1;
  }

  v104 = "failed to verify that operand types match result element type";
  v107 = 259;
  mlir::OpState::emitOpError(this, &v104, &v110);
  v35 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v110);
  if (v110)
  {
    mlir::InFlightDiagnostic::report(&v110);
  }

  if (v122 == 1)
  {
    if (v121 != &v122)
    {
      free(v121);
    }

    v93 = __p;
    if (__p)
    {
      v94 = v120;
      v95 = __p;
      if (v120 != __p)
      {
        do
        {
          v94 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v94 - 1);
        }

        while (v94 != v93);
        v95 = __p;
      }

      v120 = v93;
      operator delete(v95);
    }

    v96 = v117;
    if (v117)
    {
      v97 = v118;
      v98 = v117;
      if (v118 != v117)
      {
        do
        {
          v100 = *--v97;
          v99 = v100;
          *v97 = 0;
          if (v100)
          {
            MEMORY[0x259C63150](v99, 0x1000C8077774924);
          }
        }

        while (v97 != v96);
        v98 = v117;
      }

      v118 = v96;
      operator delete(v98);
    }

    if (v113 != v116)
    {
      free(v113);
    }
  }

  return v35;
}

uint64_t mlir::mps::serialization::FromElementsOp::parse(mlir::mps::serialization::FromElementsOp *this, mlir::OpAsmParser *a2, mlir::OperationState *a3)
{
  v96[16] = *MEMORY[0x277D85DE8];
  v95[0] = v96;
  v95[1] = 0x400000000;
  v5 = (*(*this + 40))(this, a2, a3);
  if (((*(*this + 720))(this, v95, 0, 1, 0xFFFFFFFFLL) & 1) == 0 || ((*(*this + 40))(this), ((*(*this + 488))(this, a2 + 112) & 1) == 0) || ((*(*this + 104))(this) & 1) == 0 || (v82 = 0, !mlir::AsmParser::parseType<mlir::RankedTensorType>(this, &v82)))
  {
    v17 = 0;
    goto LABEL_15;
  }

  v6 = v82;
  v7 = *v82;
  if (*(*v82 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_37;
  }

  {
    v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_19:
    v10 = 0;
    v11 = v9;
    goto LABEL_20;
  }

  mlir::mps::serialization::ExtractOp::inferReturnTypes();
  v8 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_8:
  v11 = v9;
  v12 = v10;
  do
  {
    v13 = v12 >> 1;
    v14 = &v11[2 * (v12 >> 1)];
    v16 = *v14;
    v15 = v14 + 2;
    v12 += ~(v12 >> 1);
    if (v16 < v8)
    {
      v11 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  while (v12);
LABEL_20:
  if (v11 != &v9[2 * v10] && *v11 == v8)
  {
    v19 = v11[1];
  }

  else
  {
    v19 = 0;
  }

  v82 = v6;
  v83 = v19;
  if (mlir::ShapedType::hasRank(&v82))
  {
    Shape = mlir::ShapedType::getShape(&v82);
    if (v21)
    {
      v22 = 8 * v21;
      while (*Shape != 0x8000000000000000)
      {
        ++Shape;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_37;
    }

LABEL_29:
    v23 = *v6;
    {
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
        goto LABEL_31;
      }
    }

    else
    {
      mlir::mps::serialization::ExtractOp::inferReturnTypes();
      v24 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      if (v26)
      {
LABEL_31:
        v27 = v25;
        v28 = v26;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[2 * (v28 >> 1)];
          v32 = *v30;
          v31 = v30 + 2;
          v28 += ~(v28 >> 1);
          if (v32 < v24)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
LABEL_71:
        if (v27 != &v25[2 * v26] && *v27 == v24)
        {
          v46 = v27[1];
        }

        else
        {
          v46 = 0;
        }

        v77 = v6;
        v78 = v46;
        mlir::ShapedType::getElementType(&v77);
        v47 = *(a2 + 18);
        if (v47 >= *(a2 + 19))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        *(*(a2 + 8) + 8 * v47) = v6;
        ++*(a2 + 18);
        v48 = *v6;
        {
          v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v50 = *(v48 + 8);
          v51 = *(v48 + 16);
          if (v51)
          {
            goto LABEL_79;
          }
        }

        else
        {
          mlir::mps::serialization::ExtractOp::inferReturnTypes();
          v49 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
          v50 = *(v48 + 8);
          v51 = *(v48 + 16);
          if (v51)
          {
LABEL_79:
            v52 = v50;
            v53 = v51;
            do
            {
              v54 = v53 >> 1;
              v55 = &v52[2 * (v53 >> 1)];
              v57 = *v55;
              v56 = v55 + 2;
              v53 += ~(v53 >> 1);
              if (v57 < v49)
              {
                v52 = v56;
              }

              else
              {
                v53 = v54;
              }
            }

            while (v53);
LABEL_87:
            if (v52 != &v50[2 * v51] && *v52 == v49)
            {
              v58 = v52[1];
            }

            else
            {
              v58 = 0;
            }

            v77 = v6;
            v78 = v58;
            v59 = mlir::ShapedType::getShape(&v77);
            NumElements = mlir::ShapedType::getNumElements(v59, v60);
            v62 = *v6;
            {
              v63 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v64 = *(v62 + 8);
              v65 = *(v62 + 16);
              if (v65)
              {
                goto LABEL_93;
              }
            }

            else
            {
              v72 = v62;
              mlir::mps::serialization::ExtractOp::inferReturnTypes();
              v63 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
              v64 = *(v72 + 8);
              v65 = *(v72 + 16);
              if (v65)
              {
LABEL_93:
                v66 = v64;
                v67 = v65;
                do
                {
                  v68 = v67 >> 1;
                  v69 = &v66[2 * (v67 >> 1)];
                  v71 = *v69;
                  v70 = v69 + 2;
                  v67 += ~(v67 >> 1);
                  if (v71 < v63)
                  {
                    v66 = v70;
                  }

                  else
                  {
                    v67 = v68;
                  }
                }

                while (v67);
                goto LABEL_101;
              }
            }

            v65 = 0;
            v66 = v64;
LABEL_101:
            if (v66 != &v64[2 * v65] && *v66 == v63)
            {
              v73 = v66[1];
            }

            else
            {
              v73 = 0;
            }

            *&v80 = v6;
            *(&v80 + 1) = v73;
            ElementType = mlir::ShapedType::getElementType(&v80);
            v82 = &v84;
            HIDWORD(v83) = 2;
            if (NumElements >= 3)
            {
              LODWORD(v83) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (NumElements)
            {
              v75 = vmovn_s64(vcgeq_u64(vdupq_n_s64(NumElements - 1), xmmword_2573686A0));
              if (v75.i8[0])
              {
                v84 = ElementType;
              }

              if (v75.i8[4])
              {
                v85 = ElementType;
              }
            }

            LODWORD(v83) = NumElements;
            v76 = mlir::OpAsmParser::resolveOperands<llvm::SmallVector<mlir::OpAsmParser::UnresolvedOperand,4u> &,llvm::SmallVector<mlir::Type,1u> &>(this, v95, &v82, v5, a2 + 16);
            if (v82 != &v84)
            {
              free(v82);
            }

            v17 = v76 & 1;
            goto LABEL_15;
          }
        }

        v51 = 0;
        v52 = v50;
        goto LABEL_87;
      }
    }

    v26 = 0;
    v27 = v25;
    goto LABEL_71;
  }

LABEL_37:
  v33 = (*(*this + 16))(this);
  v79 = 257;
  (*(*this + 24))(&v82, this, v33, &v77);
  if (v82)
  {
    LODWORD(v80) = 3;
    *(&v80 + 1) = "'result' must be statically shaped tensor of any type values, but got ";
    v81 = 70;
    if (v86 >= v87)
    {
      if (v85 > &v80 || v85 + 24 * v86 <= &v80)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    v34 = v85 + 24 * v86;
    v35 = v80;
    *(v34 + 2) = v81;
    *v34 = v35;
    ++v86;
    if (v82)
    {
      mlir::DiagnosticArgument::DiagnosticArgument(&v80, v6);
      if (v86 >= v87)
      {
        if (v85 > &v80 || v85 + 24 * v86 <= &v80)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      v36 = v85 + 24 * v86;
      v37 = v80;
      *(v36 + 2) = v81;
      *v36 = v37;
      ++v86;
    }
  }

  v17 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v82);
  if (v82)
  {
    mlir::InFlightDiagnostic::report(&v82);
  }

  if (v94 == 1)
  {
    if (v93 != &v94)
    {
      free(v93);
    }

    v38 = __p;
    if (__p)
    {
      v39 = v92;
      v40 = __p;
      if (v92 != __p)
      {
        do
        {
          v39 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v39 - 1);
        }

        while (v39 != v38);
        v40 = __p;
      }

      v92 = v38;
      operator delete(v40);
    }

    v41 = v89;
    if (v89)
    {
      v42 = v90;
      v43 = v89;
      if (v90 != v89)
      {
        do
        {
          v45 = *--v42;
          v44 = v45;
          *v42 = 0;
          if (v45)
          {
            MEMORY[0x259C63150](v44, 0x1000C8077774924);
          }
        }

        while (v42 != v41);
        v43 = v89;
      }

      v90 = v41;
      operator delete(v43);
    }

    if (v85 != &v88)
    {
      free(v85);
    }
  }

LABEL_15:
  if (v95[0] != v96)
  {
    free(v95[0]);
  }

  return v17;
}