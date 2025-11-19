@interface NSArray
@end

@implementation NSArray

uint64_t __54__NSArray_MRAVAdditions__mr_containsVideoOutputDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v2 deviceSubtype] == 7 || objc_msgSend(v2, "deviceSubtype") == 8 || objc_msgSend(v2, "deviceSubtype") == 11 || objc_msgSend(v2, "deviceSubtype") == 13 || objc_msgSend(v2, "deviceSubtype") == 15 && objc_msgSend(v2, "clusterType") == 2 || objc_msgSend(v2, "deviceSubtype") == 16 || objc_msgSend(v2, "deviceSubtype") == 17 || objc_msgSend(v2, "deviceSubtype") == 18)
    {
      v3 = 1;
    }

    else
    {
      v3 = [v2 isCarPlayVideoAllowed];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __45__NSArray_MRAVAdditions__mr_allOutputDevices__block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 activatedClusterMembersOutputDevices];
  if (v3)
  {
    v9[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

    v5 = [v4 arrayByAddingObjectsFromArray:v3];
    v2 = v4;
  }

  else
  {
    v8 = v2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

MRAVDistantOutputDevice *__49__NSArray_MRAVAdditions__mr_distantOutputDevices__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MRAVDistantOutputDevice alloc];
  v4 = [v2 descriptor];

  v5 = [(MRAVDistantOutputDevice *)v3 initWithDescriptor:v4];

  return v5;
}

MRAVDistantEndpoint *__45__NSArray_MRAVAdditions__mr_distantEndpoints__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v4 = [MRAVDistantEndpoint alloc];
    v5 = [v2 descriptor];
    v3 = [(MRAVDistantEndpoint *)v4 initWithDescriptor:v5];
  }

  return v3;
}

MRAVDistantOutputDevice *__49__NSArray_MRAVAdditions__mr_redactClusterMembers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 descriptor];
  [v2 setActivatedClusterMembers:0];
  v3 = [[MRAVDistantOutputDevice alloc] initWithDescriptor:v2];

  return v3;
}

uint64_t __67__NSArray_MRCommandInfoAdditions__mr_isCommandSupportedAndEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 command] == *(a1 + 32))
  {
    v4 = [v3 isEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __85__NSArray_MRAdditions__changeDescriptionTo_keyBlock_isUpdatedBlock_descriptionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    if ((*(*(a1 + 64) + 16))())
    {
      v6 = *(a1 + 40);
    }

    else
    {
      v6 = *(a1 + 48);
    }

    v7 = (*(*(a1 + 72) + 16))();
  }

  else
  {
    v6 = *(a1 + 56);
    v7 = (*(*(a1 + 72) + 16))();
  }

  v8 = v7;
  [v6 addObject:v7];
}

@end