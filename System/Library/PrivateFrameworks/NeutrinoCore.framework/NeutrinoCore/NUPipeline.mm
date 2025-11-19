@interface NUPipeline
@end

@implementation NUPipeline

id __44___NUPipeline__compactDescriptionWithLevel___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) inputPortForChannel:a2];
  v4 = [*(a1 + 32) _compactDescriptionForInputPort:v3 showInside:*(a1 + 40) showOutside:*(a1 + 41)];

  return v4;
}

id __44___NUPipeline__compactDescriptionWithLevel___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) outputPortForChannel:a2];
  v4 = [*(a1 + 32) _compactDescriptionForOutputPort:v3 showInside:*(a1 + 40) showOutside:*(a1 + 41)];

  return v4;
}

uint64_t __36___NUPipeline__subpipelineWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __55___NUPipeline_processContainer_forEachComponent_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) channel];
  v7 = [v5 _addInputChannel:v6];

  v8 = (*(*(a1 + 40) + 16))();
  if (v8)
  {
    v9 = [*(a1 + 32) channel];
    v10 = [v5 _addOutputChannel:v9];

    v11 = [v5 connectInputPort:v10 toOutputPort:v8 error:a3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __41___NUPipeline_switchOn_with_block_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) channel];
  v7 = [v5 _addInputChannel:v6];

  v8 = [*(a1 + 32) channel];
  v9 = [v5 _addOutputChannel:v8];

  v10 = (*(*(a1 + 40) + 16))();
  if (v10)
  {
    v11 = [v5 connectInputPort:v9 toOutputPort:v10 error:a3];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __39___NUPipeline_reduce_with_block_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) channel];
  v7 = [v5 _addInputChannel:v6];

  v8 = [v5 _addInputChannel:*(a1 + 40)];
  v9 = (*(*(a1 + 48) + 16))();
  if (v9)
  {
    v10 = [*(a1 + 32) channel];
    v11 = [v5 _addOutputChannel:v10];

    v12 = [v5 connectInputPort:v11 toOutputPort:v9 error:a3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __31___NUPipeline_map_block_error___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 _addInputChannel:a1[4]];
  v7 = (*(a1[5] + 16))();
  v8 = v7;
  if (v7)
  {
    v9 = [v7 channel];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [v5 _addOutputChannel:*(*(a1[6] + 8) + 40)];
    v13 = [v5 connectInputPort:v12 toOutputPort:v8 error:a3];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end