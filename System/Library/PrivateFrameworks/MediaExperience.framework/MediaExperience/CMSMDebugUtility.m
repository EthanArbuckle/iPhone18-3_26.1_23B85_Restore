@interface CMSMDebugUtility
@end

@implementation CMSMDebugUtility

void __CMSMDebugUtility_RegisterForCACentralStateDumping_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = MXGetSerialQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CMSMDebugUtility_RegisterForCACentralStateDumping_block_invoke_2;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = a2;
  MXDispatchAsyncAndWait("CMSMDebugUtility_RegisterForCACentralStateDumping_block_invoke", "MXSessionManagerDebugUtilitiesCommon.m", 685, 0, 0, v3, v4);
}

void __CMSMDebugUtility_RegisterForCACentralStateDumping_block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    fwrite("CMSESSION STATE\n", 0x10uLL, 1uLL, v1);
    fwrite("Playing Sessions\n", 0x11uLL, 1uLL, v1);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v22;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v21 + 1) + 8 * i);
          if ([v7 isPlaying])
          {
            v25[0] = 0;
            [v7 clientName];
            CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
            fprintf(v1, "Name: %s\n", CStringPtrAndBufferToFree);
            free(v25[0]);
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v4);
    }

    fwrite("\nActive Sessions\n", 0x11uLL, 1uLL, v1);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (j = 0; j != v10; ++j)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v2);
          }

          v13 = *(*(&v17 + 1) + 8 * j);
          if ([v13 isActive])
          {
            [v13 clientName];
            v14 = FigCFStringGetCStringPtrAndBufferToFree();
            if ([v13 displayID])
            {
              [v13 displayID];
            }

            v15 = FigCFStringGetCStringPtrAndBufferToFree();
            fprintf(v1, "Name: %s DisplayID %s \n", v14, v15);
            free(0);
            free(0);
          }
        }

        v10 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v10);
    }

    fwrite("\n\n", 2uLL, 1uLL, v1);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end