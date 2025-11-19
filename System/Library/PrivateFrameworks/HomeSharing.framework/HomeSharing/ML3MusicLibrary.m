@interface ML3MusicLibrary
@end

@implementation ML3MusicLibrary

void __86__ML3MusicLibrary_HSAdditions__checkForChangesInHomeSharingLibrary_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__ML3MusicLibrary_HSAdditions__checkForChangesInHomeSharingLibrary_completionHandler___block_invoke_2;
  v12[3] = &unk_279779728;
  v7 = a1[6];
  v9 = a1[4];
  v8 = a1[5];
  v15 = v6;
  v16 = v7;
  v13 = v5;
  v14 = v8;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void __86__ML3MusicLibrary_HSAdditions__checkForChangesInHomeSharingLibrary_completionHandler___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    dispatch_group_enter(*(a1 + 32));
    BuildContainers(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

void __86__ML3MusicLibrary_HSAdditions__checkForChangesInHomeSharingLibrary_completionHandler___block_invoke_6(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__ML3MusicLibrary_HSAdditions__checkForChangesInHomeSharingLibrary_completionHandler___block_invoke_7;
  block[3] = &unk_2797797E8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __86__ML3MusicLibrary_HSAdditions__checkForChangesInHomeSharingLibrary_completionHandler___block_invoke_2(uint64_t a1)
{
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = [*(a1 + 32) error];
    v3 = v2;
    if (v2)
    {
      v4 = *(*(a1 + 56) + 8);
      v5 = v2;
      v6 = *(v4 + 40);
      *(v4 + 40) = v5;
    }

    else
    {
      v7 = *(a1 + 48);
      v6 = [*(a1 + 32) responseData];
      (*(v7 + 16))(v7, v6);
    }
  }

  v8 = *(a1 + 40);

  dispatch_group_leave(v8);
}

uint64_t __49__ML3MusicLibrary_HSAdditions__executeUpdateSQL___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 executeUpdate:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __97__ML3MusicLibrary_HSAdditions__fillContainerForHomeSharingLibrary_containerID_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = a1[5];
    v10 = [v3 error];

    (*(v5 + 16))(v5, 0, v10);
  }

  else
  {
    v6 = [v3 responseData];

    v7 = [MEMORY[0x277CBEB18] array];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __97__ML3MusicLibrary_HSAdditions__fillContainerForHomeSharingLibrary_containerID_completionHandler___block_invoke_2;
    v11[3] = &unk_2797796B0;
    v11[4] = a1[4];
    v12 = v7;
    v8 = v7;
    [HSResponseDataParser enumerateItemsInResponseData:v6 usingHandler:v11];
    v9 = [MEMORY[0x277D2B5C8] newWithPersistentID:a1[6] inLibrary:a1[4]];
    [v9 setTracksWithPersistentIDs:v8 notify:0];
    (*(a1[5] + 16))();
  }
}

void __97__ML3MusicLibrary_HSAdditions__fillContainerForHomeSharingLibrary_containerID_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v5 = (a2 + 16);
    v6 = *MEMORY[0x277D2B568];
    do
    {
      if (*(v5 - 4) == 1835624804)
      {
        v7 = *(v5 - 1);
        v8 = *v5;
        v9 = -1;
        if (*v5 > 3)
        {
          if (v8 == 4)
          {
            v9 = bswap32(*v7);
          }

          else if (v8 == 8)
          {
            v9 = ((*v7 << 56) | (v7[1] << 48) | (v7[2] << 40) | (v7[3] << 32) | (v7[4] << 24) | (v7[5] << 16) | (v7[6] << 8)) + v7[7];
          }
        }

        else if (v8 == 1)
        {
          v9 = *v7;
        }

        else if (v8 == 2)
        {
          v9 = __rev16(*v7);
        }

        v10 = MEMORY[0x277D2B620];
        v11 = *(a1 + 32);
        v12 = [MEMORY[0x277D2B5C0] predicateWithProperty:v6 equalToInt64:v9];
        v13 = [v10 anyInLibrary:v11 predicate:v12];

        if (v13)
        {
          v14 = *(a1 + 40);
          v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "persistentID")}];
          [v14 addObject:v15];
        }
      }

      v5 += 4;
      --v3;
    }

    while (v3);
  }
}

uint64_t __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke(uint64_t result, float a2)
{
  if (*(result + 32))
  {
    *(*(*(result + 40) + 8) + 24) = *(*(*(result + 40) + 8) + 24) + a2;
    return (*(*(result + 32) + 16))(*(result + 32), *(*(*(result + 40) + 8) + 24));
  }

  return result;
}

void __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_3;
  v12[3] = &unk_279779728;
  v7 = a1[6];
  v9 = a1[4];
  v8 = a1[5];
  v15 = v6;
  v16 = v7;
  v13 = v5;
  v14 = v8;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:@"SELECT 1 FROM item LIMIT 1"];
  *(*(*(a1 + 32) + 8) + 24) = [v3 hasAtLeastOneRow];
}

void __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_6(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_7(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_8(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 40) || ([*(a1 + 32) updateOrderingLanguagesForCurrentLanguage], *(*(*(a1 + 48) + 8) + 40)))
  {
    (*(*(a1 + 40) + 16))();
    v2 = *(*(a1 + 48) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1065353216;
    v4 = *(*(a1 + 40) + 16);

    v4();
  }
}

void __109__ML3MusicLibrary_HSAdditions__buildDatabaseFromHomeSharingLibrary_atPath_completionHandler_progressHandler___block_invoke_3(uint64_t a1)
{
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    if ([*(a1 + 32) responseCode] == 200 && (objc_msgSend(*(a1 + 32), "error"), v2 = objc_claimAutoreleasedReturnValue(), v2, !v2))
    {
      v8 = *(a1 + 48);
      v3 = [*(a1 + 32) responseData];
      (*(v8 + 16))(v8, v3);
    }

    else
    {
      v3 = [*(a1 + 32) error];
      if (v3)
      {
        v4 = [*(a1 + 32) error];
      }

      else
      {
        v5 = objc_alloc(MEMORY[0x277CCA9B8]);
        v4 = [v5 initWithDomain:*MEMORY[0x277D2B590] code:0 userInfo:0];
      }

      v6 = v4;
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
    }
  }

  v7 = *(a1 + 40);

  dispatch_group_leave(v7);
}

@end